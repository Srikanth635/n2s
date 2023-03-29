import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId
from bson.decimal128 import Decimal128
from bson import errors
import numpy as np
from datetime import datetime
import re
from time import time
import sqlalchemy.pool as pool
from sqlalchemy import create_engine, Engine
from sqlalchemy import text, exc
from copy import deepcopy
from orderedset import OrderedSet
from triples_to_sql import TriplesToSQL, get_byte_size, get_sql_type_from_pyval
from tqdm import tqdm
import argparse
import pickle


# mongo_to_python_conversions
def mon2py(val, name=None):
    """Convert the value from mongo to python type

    Args:
        val ([mongo_type]): [value from mongo database to be converted to python type]
        name ([str], optional): [For matching the template of conversion functions]. Defaults to None.

    Returns:
        [python_type]: [the converted value]
    """
    if type(val) == Decimal128:
        return float(val.to_decimal())
    elif type(val) == ObjectId:
        return str(val)
    elif type(val) == datetime:
        return val.timestamp() + 60*60
    else:
        return val

def py2sql(val, table_name, column_name, id=False, type2sql_func=None):
    """Convert the value from python to sql type
    Args:
        val ([python_type]): [value from python to be converted to sql type]
        table_name ([str]): [name of the table]
        column_name ([str]): [name of the column]
        id (bool, optional): [whether the column is an id column]. Defaults to False.
        type2sql_func ([function], optional): [user function to convert the python type to sql type]. Defaults to None.
    """
    val_type = type(val)
    if val_type == None:
        return None, None
    elif id:
        return 'VARCHAR(24)', None
    elif type2sql_func is not None:
        return type2sql_func(val, table_name+'.'+column_name)
    else:
        raise ValueError(f"UNKOWN DATA TYPE {val_type}")

class SQLCreator():
    def __init__(self, engine:Engine, value_mapping_func=None, allowed_missing_percentage=5, tosql_func=None, verbose=False) -> None:
        """A class to create SQL tables (from python data structures) and insert data into them

        Args:
            engine (Engine): [sqlalchemy engine]
            value_mapping_func ([function], optional): [function to convert the value from mongo to python type]. Defaults to None.
            allowed_missing_percentage (int, optional): [percentage of missing values allowed in a column]. Defaults to 5.
            tosql_func ([function], optional): [function to convert the value from python to sql type]. Defaults to None.
            verbose (bool, optional): [whether to print the progress]. Defaults to False.
        
        Example:
            data = {'ID': [1, 2, 3], 'name': ['a', 'b', 'c'], 'age': [10, 20, 30]}
            engine = create_engine('mysql+pymysql://username:password@localhost/test?charset=utf8mb4')
            sql_creator = SQLCreator(engine, value_mapping_func=mon2py, tosql_func=py2sql)
            sql_creator.find_relationships('data', data)
            sql_creator.convert_to_sql('data', data)
            sql_creator.upload_data_to_sql()
        """
        self.engine = engine
        self.not_always_there = []
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
        self.meta_data = {}
        self.all_obj_keys = {}
        self.obj_key_count = {}
        self.one_item_lists = []
        self.not_one_item_lists = []
        self.name_type = {}
        self.value_mapping_func = value_mapping_func if value_mapping_func is not None else mon2py
        self.linked_table_names = OrderedSet()
        self.allowed_missing_percentage = allowed_missing_percentage
        self.tosql_func = tosql_func
        self.data_bytes = {}
        self.verpose = verbose
        self.sql_meta_data = self._get_sql_meta_data()

    def reset_data(self):
        """Reset all data to empty .
        """
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
    
    def merge_with(self, sql_creator):
        """Merge another SQL creator .

        Args:
            sql_creator ([SQLCreator]): [sql_creator to be merged with]
        """
        self.sql_table_creation_cmds.update(sql_creator.sql_table_creation_cmds)
        self.data_to_insert.update(sql_creator.data_to_insert)
    
    def insert_column_and_value(self, table_name, column_name, v, null_prev_rows=True):
        """Insert a column and value into the data_to_insert dictionary
        
        Args:
            table_name ([str]): [name of the table]
            column_name ([str]): [name of the column]
            v ([python_type]): [value to be inserted]
            null_prev_rows (bool, optional): [whether to insert NULL values for previous rows]. Defaults to True.
        """
        id = True if column_name in ['_id', 'neem_id'] else False
        data_type, byte_sz = py2sql(v, id=id, type2sql_func=self.tosql_func, table_name=table_name, column_name=column_name)     
        # Insertion
        key = table_name
        v = 'NULL' if v is None else v
        v = -1 if v == float('inf') else v
        if column_name not in self.data_to_insert[key].keys():
            null, unique = True, False
            if data_type is not None:
                if id:
                    null = False
                    if column_name == '_id' and key == 'neems':
                        unique = True
            self.add_col(key, column_name, data_type, NULL=null, UNIQUE=unique)
            if null_prev_rows:
                # The NULL values here are for previous rows that did not have a value for this column
                n_rows = len(self.data_to_insert[key]['ID']) - 1
                self.data_to_insert[key][column_name] = ['NULL']*n_rows + [v]
            else:
                self.data_to_insert[key][column_name] = [v]
            if key not in self.data_bytes.keys():
                self.data_bytes[key] = {}
            self.data_bytes[key][column_name] = byte_sz
        else:
            self.data_to_insert[key][column_name].append(v)
            if byte_sz is not None:
                if self.data_bytes[key][column_name] is None:
                    self.data_bytes[key][column_name] = byte_sz
                    self.sql_table_creation_cmds.add(f"ALTER TABLE {key} MODIFY COLUMN {column_name} {data_type};")
                elif byte_sz > self.data_bytes[key][column_name]:
                    self.data_bytes[key][column_name] = byte_sz
                    self.sql_table_creation_cmds.add(f"ALTER TABLE {key} MODIFY COLUMN {column_name} {data_type};")

    def find_relationships(self, key, obj, parent_key=None):
        """Find relationships between tables and columns,
          some columns are not always present in the data, so they are not always present in the table,
          so we need to create a new table for them. Also some lists contain only one item,
          so we can remove the list and put the item in the table.

        Args:
            key ([str]): [name of the table]
            obj ([dict]): [data to be inserted]
            parent_key ([str], optional): [name of the parent object]. Defaults to None.
        """
        if '#' in key:
            key = key.split('#')[1]
        if type(obj) == dict:
            obj_k = list(map(lambda x: x.split('#')[1] if '#' in x else x, obj.keys()))
            if key in self.all_obj_keys.keys():
                for k, v in obj.items():
                    if '#' in k:
                        k = k.split('#')[1]
                    if k not in self.all_obj_keys[key] and k not in self.sql_meta_data.get(key, []):
                        self.not_always_there.append(key+'.'+k)
                for k, v in self.all_obj_keys[key].items():
                    if k not in obj_k and k not in self.sql_meta_data.get(key, []):
                            self.not_always_there.append(key+'.'+k)
            else:
                self.all_obj_keys[key] = {}
                self.obj_key_count[key] = {'key_count': 0}

            self.obj_key_count[key]['key_count'] += 1
            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                self.obj_key_count[key][k] = self.obj_key_count[key].get(k, 0) + 1
                if type(v) == list:
                    if len(v) == 1:
                        if (key+'.'+k not in self.one_item_lists and key+'.'+k not in self.not_one_item_lists)\
                            or k in self.sql_meta_data.get(key, []):
                            self.one_item_lists.append(key+'.'+k)
                    else:
                        if key+'.'+k not in self.not_one_item_lists and k not in self.sql_meta_data.get(key, []):
                            self.not_one_item_lists.append(key+'.'+k)
                        if key+'.'+k in self.one_item_lists and k not in self.sql_meta_data.get(key, []):
                            self.one_item_lists.remove(key+'.'+k)

            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                if type(v) in [dict, list]:
                    self.find_relationships(k, v, key)
                self.all_obj_keys[key][k] = {}
        elif np.iterable(obj) and type(obj) != str:
            if parent_key is not None:
                table_name = parent_key+'_'+key
            else:
                table_name = key
            for v in obj:
                if type(v) == dict:
                    if len(v) == 1:
                        if (table_name not in self.one_item_lists and table_name not in self.not_one_item_lists)\
                            or table_name in self.sql_meta_data:
                            self.one_item_lists.append(table_name)
                    else:
                        if table_name not in self.not_one_item_lists and table_name not in self.sql_meta_data:
                            self.not_one_item_lists.append(table_name)
                        if table_name in self.one_item_lists and table_name not in self.sql_meta_data:
                            self.one_item_lists.remove(table_name)
                self.find_relationships(key, v, parent_key)
        else:
            self.all_obj_keys[key] = []

    def filter_null_tables(self):
        """Filter all null tables in the database, if the number of null values in a column is greater than
            the allowed_missing_percentage, then the column is removed from the table,
            and a new table is created for it.
        """
        for key, all_count in self.obj_key_count.items():
            total_count = all_count['key_count']
            for k, count in all_count.items():
                if k == 'key_count':
                    continue
                if k not in self.sql_meta_data.get(key, []):
                    if ((1 - count/total_count) * 100) > self.allowed_missing_percentage:
                        self.not_always_there.append(key+'.'+k)  

    def convert_to_sql(self, key, obj, parent_key=None,
                        key_iri='', parent_key_iri='', parent_table_name='',
                          parent_list=False, verbose=False):
        """Convert a nested dictionary containing dictionaries and lists into a SQL table,
            by recursively traversing the dictionary and creating a table for each object,
            and a column for each key in the object, and storing the data in a dictionary made 
            of upper level keys as table names and lower level keys as column names.

        Args:
            key ([str]): [object/table name]
            obj ([dict|list]): [data to be inserted]
            parent_key ([str], optional): [parent object name]. Defaults to None.
            key_iri (str, optional): [ontology iri of object]. Defaults to ''.
            parent_key_iri (str, optional): [ontology iri of parent object]. Defaults to ''.
            parent_table_name (str, optional): [the name of the parent table which is made from parent object]. Defaults to ''.
            parent_list (bool, optional): [whether the parent object was a list or not]. Defaults to False.
            verbose (bool, optional): [print on screen or not]. Defaults to False.

        Raises:
            ValueError: [description]

        Returns:
            [type]: [description]
        """
        # This is the ID of the object/row in the sql table.
        ID = None

        # This is to preserve the iri of ontology defined terms.
        orig_key = key
        iri = ''
        if '#' in orig_key:
            key = orig_key.split('#')[1]
            iri = orig_key.split('#')[0]+'#'
        iri = key_iri if iri == '' else iri
        iri = parent_key_iri if iri == '' else iri
        
        # This is for making sure that this string object is not actually and ontology defined array.
        # if it is an ontology defined array, then a mapping is performed on the string to convert it to a list.
        mapped_already = False
        if parent_key is not None and type(obj) == str and parent_key_iri != '' and '_' not in parent_key:
            if ' ' in obj or ',' in obj:
                obj = self.value_mapping_func(obj, name=parent_key_iri+parent_key)
                mapped_already = True

        if type(obj) == dict:
            table_name = key if parent_key is None else parent_key+'_'+key

            id_col_string = f"CREATE TABLE IF NOT EXISTS {table_name} (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);"
            self.sql_table_creation_cmds.add(id_col_string)

            # Make object keys that are not always there into lists (thus making them many to many relationships)
            # Also, map one item lists into just the item.
            obj_cp = deepcopy(obj)
            for k, v in obj_cp.items():
                orig_k = k
                if '#' in k:
                    k = k.split('#')[1]
                if type(v) != list:
                    if key+'.'+k in self.not_always_there:
                        obj[orig_k] = [v]
                else:
                    if key+'.'+k in self.one_item_lists and key+'.'+k not in self.not_always_there:
                        obj[orig_k] = v[0]
                        if type(v[0]) != dict:
                            continue
                        if key+'_'+k not in self.one_item_lists:
                            continue
                        # This is a one item dict, so we can just map it to the value.
                        for k2, v2 in v[0].items():
                            if k2 in ['@value','@id']:
                                obj[orig_k] = v2

            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            latest_id = 0
            if parent_list:
                if table_name in self.sql_meta_data:
                    res = self.get_id_from_sql(table_name, obj, max_id=True)
                    if len(res) != 0:
                        ID = res[-1]
                        return obj, type(obj), np.iterable(obj) and type(obj) != str, ID
                    else:
                        latest_id = self.get_max_id_from_sql(table_name)
                if table_name in self.data_to_insert.keys():
                    if type(self.data_to_insert[table_name]) == dict:
                        all_keys_exist = all([k in self.data_to_insert[table_name].keys() for k in obj.keys()])
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                ID = 1 + latest_id

            # Now that the keys exist, this would check if the values also exist, if it does then skip it, and use old one ID.
            # This is to get all values of all columns and put them together to for a complete row in the table
            # key is table name (here it is the dict key),
            #  and the keys and values of that dict are the column_names and their respective values
            # For example: self.data_to_insert['neems']['ID'] = [id1, id2, id3], where 'neems' is the table name
            # 'ID' is the column_name, and 'id1' to 'id3' are 3 values for 3 different rows in the 'ID' column.
            start = time()
            if all_keys_exist and parent_list:
                rows = zip(*tuple([self.data_to_insert[table_name][k] for k in obj.keys()]))
                rows_list = list(rows)
                row = tuple(filter(mon2py,obj.values()))
                if np.iterable(row):
                    row = tuple(row)
                all_values_exist = row in rows_list  
                if  all_values_exist:         
                    ID = rows_list.index(row) + 1 + latest_id
                    return obj, type(obj), np.iterable(obj) and type(obj) != str, ID
                else:
                    ID = len(rows_list) + 1 + latest_id
                if verbose:
                    print("Time to check if all values exist: ", time()-start)
            elif ID is None:
                ID = len(self.data_to_insert[table_name]['ID']) + 1 + latest_id

            # Add new ID for the new entry.
            self.data_to_insert[table_name]['ID'].append('NULL')

            # Go through all columns, create them if new, and create foreign keys to nested tables/dicts
            # Finally insert values.
            for k, v in obj.items():
                orig_k = k
                k_iri = ''
                if '#' in k:
                    k = orig_k.split('#')[1]
                    k_iri = orig_k.split('#')[0]+'#'

                v, v_type, v_iterable, v_id = self.convert_to_sql(k, v, parent_key=key, key_iri=k_iri, parent_key_iri=iri, parent_table_name=table_name)

                if v_iterable:
                    k_table_name = key+'_'+k
                    if v_type == dict:
                        #if key+'.'+k in self.one_item_lists and key+'.'+k not in self.not_always_there:
                        if key+'.'+k not in self.not_always_there:
                            self.add_fk_column(parent_table_name=k_table_name, table_name=table_name, col_name=k)
                            if f'{k}' not in self.data_to_insert[table_name]:
                                self.data_to_insert[table_name][f'{k}'] = [v_id]
                            else:
                                self.data_to_insert[table_name][f'{k}'].append(v_id)
                        else:
                            self.add_fk(parent_table_name=table_name, table_name=k_table_name)
                else:
                    # Values are inserted here for non nested columns (i.e. non iterable columns except for str)
                    self.insert_column_and_value(table_name, k, v)

            max_len = max([len(v) for k, v in self.data_to_insert[table_name].items()])
            for k, v in self.data_to_insert[table_name].items():
                if len(v) < max_len:
                    self.data_to_insert[table_name][k].extend(['NULL']*int(max_len-len(v)))

        elif np.iterable(obj) and type(obj) != str:
            # Creation
            if parent_key is not None:
                table_name = parent_key+'_'+key+'_index'
            else:
                table_name = key+'_index'
            id_col_string = f"CREATE TABLE IF NOT EXISTS {table_name} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY"
            if parent_key is not None:
                id_col_string += f",{parent_key}_ID INT NULL);"
            else:
                id_col_string += f");"
            self.sql_table_creation_cmds.add(id_col_string)

            if parent_key is not None:
                self.add_fk(parent_table_name=parent_table_name, table_name=table_name, col_name=parent_key+'_ID')
            
            # element position index column
            self.add_col(table_name, 'list_index', 'INT', NULL=True)

            # Insertion
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                if parent_key is not None:
                    self.data_to_insert[table_name][parent_key+'_ID'] = []
                self.data_to_insert[table_name]['list_index'] = []
            parent_id = None
            if parent_key is not None:
                parent_id = len(self.data_to_insert[parent_table_name]['ID'])
            i = 1

            for v in obj:
                # Insertion
                if parent_key is not None:
                    self.data_to_insert[table_name][parent_key+'_ID'].append(parent_id)
                self.data_to_insert[table_name]['ID'].append('NULL')
                self.data_to_insert[table_name]['list_index'].append(i)
                ID = i
                if type(v) == list:
                    v = {f'i_{v_i+1}':v[v_i] for v_i in range(len(v))}
                # if type(v) == str:
                #     v = {'value':v} # This makes strings be a many to many relationship.

                if parent_key is not None:
                    k_table_name = parent_key+'_'+key
                else:
                    k_table_name = key

                if np.iterable(v) and type(v) != str:
                    v, v_type, v_iterable, v_id = self.convert_to_sql(key, v,
                                                                       parent_key=parent_key, parent_key_iri=iri,
                                                                       parent_table_name=table_name, parent_list=True)
                else:
                    v_type = type(v)
                    v_iterable = False
                    v_id = None

                # This means we are in the meta file, which we know the structure of.
                if v_iterable:
                    if v_id is None:
                        raise ValueError("v_id is None, but it should not be.")
                    
                    # Instance Table Reference Column
                    col_name = f"{k_table_name}_ID"
                    self.add_fk_column(parent_table_name=k_table_name, table_name=table_name, col_name=col_name)

                    # Insertion
                    if col_name not in self.data_to_insert[table_name].keys():
                        self.data_to_insert[table_name][col_name] = [v_id]
                    else:
                        self.data_to_insert[table_name][col_name].append(v_id)

                else:
                    # Insertion
                    self.insert_column_and_value(table_name, f'{key}_values', v)

                i += 1
        else:
            if not mapped_already:
                parent_key_iri = "" if parent_key_iri is None else parent_key_iri
                parent_key = "" if parent_key is None else parent_key
                obj = self.value_mapping_func(obj, name=parent_key_iri+parent_key)
        return obj, type(obj), np.iterable(obj) and type(obj) != str, ID

    def link_column_to_exiting_table(self, table_name:str, col_name:str, type_name:str, indicies:list):
        """Link a column to an existing table .

        Args:
            table_name ([str]): [The name of the table where the column exists.]
            col_name ([str]): [The name of the column to link.]
            type_name ([str]): [The name of the table to link to.]
            indicies ([list]): [A list of indicies that correspond to the table to link to.]
        """
        if np.iterable(indicies[0]):
            for i,j in indicies:
                self.data_to_insert[table_name][col_name][i] = j
        else:
            self.data_to_insert[table_name][col_name] = indicies
        self.sql_table_creation_cmds.add(f"ALTER TABLE {table_name} MODIFY COLUMN {col_name} INT;")
        self.add_fk(parent_table_name=type_name, table_name=table_name, col_name=col_name)
    
    def add_fk_column(self, parent_table_name:str, table_name:str, col_name:str, parent_col_name='ID'):
        """Add a column to the table and make it a foreign key to another column in another table.

        Args:
            parent_table_name (str): [the name of the table to link to]
            table_name (str): [the name of the table to add the column to]
            col_name (str): [the name of the column to add]
            parent_col_name (str, optional): [the name of the column to link to in the parent table]. Defaults to 'ID'.
        """
        self.add_col(table_name, col_name, 'INT')
        self.add_fk(parent_table_name, table_name, col_name, parent_col_name)
    
    def add_fk(self, parent_table_name, table_name, col_name='ID', parent_col_name='ID'):
        col_string = f"ALTER TABLE {table_name} ADD FOREIGN KEY IF NOT EXISTS ({col_name}) REFERENCES {parent_table_name}({parent_col_name});"
        self.sql_table_creation_cmds.add(col_string)
    
    def add_col(self, table_name, col_name, col_type, NULL=True, KEY='', UNIQUE=False, DEFAULT=None, AUTO_INCREMENT=False):
        NULL = ' NOT NULL' if not NULL else ' NULL'
        UNIQUE = ' UNIQUE' if UNIQUE else ''
        AUTO_INCREMENT = ' AUTO_INCREMENT' if AUTO_INCREMENT else ''
        if KEY != '':
            KEY = f' {KEY}'
        col_string = f"ALTER TABLE {table_name} ADD COLUMN IF NOT EXISTS {col_name} {col_type}{NULL}{KEY}{AUTO_INCREMENT}{UNIQUE}"
        if DEFAULT is not None:
            col_string += f" DEFAULT {DEFAULT}"
        col_string += ';'
        self.sql_table_creation_cmds.add(col_string)
    
    def get_id_from_sql(self, table_name:str, col_value_pairs:dict, max_id=False):
        sql_cmd = f"SELECT ID FROM {table_name} WHERE "
        for i, (k, v) in enumerate(col_value_pairs.items()):
            sql_cmd += f"{k} = '{v}'"
            if i != len(col_value_pairs)-1:
                sql_cmd += ' AND '
            else:
                sql_cmd += ';'
        with self.engine.connect() as conn:
            try:
                result = conn.execute(text(sql_cmd))
                result = result.fetchall()
                result = [x[0] for x in result]
            except:
                result = []
        return result
    
    def get_max_id_from_sql(self, table_name:str, col_name='ID'):
        sql_cmd = f"SELECT MAX({col_name}) FROM {table_name};"
        with self.engine.connect() as conn:
            try:
                result = conn.execute(text(sql_cmd))
                result = result.fetchall()
                result = [x[0] for x in result]
                if len(result) == 0:
                    result = 0
                else:
                    result = result[0]
            except:
                result = 0
        return result
        
    
    def link_column_to_new_table(self, parent_table_name, type_name, instance_table_indicies, original_table_indicies):
        # Creation
        new_table_name = parent_table_name+'_'+type_name
        table_string = f"CREATE TABLE IF NOT EXISTS {parent_table_name+'_'+type_name} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY);"
        self.sql_table_creation_cmds.add(table_string)
        
        # Instance Table Reference Column
        self.add_fk_column(parent_table_name, parent_table_name+'_'+type_name, parent_table_name+'_ID')

        # Original Table Reference Column
        self.add_fk_column(type_name, parent_table_name+'_'+type_name, type_name+'_ID')

        # Insertion
        self.data_to_insert[parent_table_name+'_'+type_name] = {}
        self.data_to_insert[parent_table_name+'_'+type_name]['ID'] = ['NULL']*len(instance_table_indicies)
        self.data_to_insert[parent_table_name+'_'+type_name][parent_table_name+'_ID'] = instance_table_indicies
        self.data_to_insert[parent_table_name+'_'+type_name][type_name+'_ID'] = original_table_indicies
        return new_table_name

    
    def reference_to_existing_table(self):
        data_to_insert_cp = deepcopy(self.data_to_insert)
        for table_name, cols in data_to_insert_cp.items():
            for col_name, col_values in cols.items():
                if len(col_values) == 0:
                    continue
                v = col_values[0]
                if type(v) != str:
                    continue
                if '#' not in v:
                    continue
                first_type_name = None
                multi_type = False
                all_type_names = {}
                type_name = None
                for c_i, v in enumerate(col_values):
                    if v not in self.name_type: # Not a Named Individual
                        multi_type = True
                        continue
                    type_name = self.name_type[v]
                    if type_name not in self.data_to_insert: # No table for this type
                        raise ValueError(f"Table {type_name} does not exist.")
                    if type_name == table_name: # Self reference
                        multi_type = True
                        continue
                    if c_i == 0:
                        first_type_name = type_name
                    elif first_type_name != type_name:
                        multi_type = True
                    if type_name not in all_type_names.keys():
                        all_type_names[type_name] = {'instance_table_indicies': [], 'original_table_indicies': []}
                    all_type_names[type_name]['instance_table_indicies'].append(c_i+1)
                    id = self.data_to_insert[type_name]['@id'].index(v) + 1
                    all_type_names[type_name]['original_table_indicies'].append(id)

                # if self_reference or not named_individual:
                #     continue                     
                if not multi_type:
                    self.link_column_to_exiting_table(table_name, col_name, type_name, all_type_names[type_name]['original_table_indicies'])
                else:
                    for type_name, indicies in all_type_names.items():
                        self.link_column_to_new_table(table_name, type_name,
                                                       indicies['instance_table_indicies'],
                                                         indicies['original_table_indicies'])

    def get_insert_rows_commands(self, columns_to_insert=None, max_rows_per_cmd=100000):
        sql_insert_commands = []
        for key, rows_dict in self.data_to_insert.items():
            
            if columns_to_insert is not None:
                cols = columns_to_insert[key]
                cols_str = str(cols).strip('[]')
            cols = tuple(rows_dict.keys())
            cols_str = re.sub("(')","",str(cols))
            rows_list = list(zip(*tuple(rows_dict.values())))
            for i in range(0, len(rows_list), max_rows_per_cmd):
                all_rows_str = str(rows_list[i:i+max_rows_per_cmd]).strip('[]')
                all_rows_str = re.sub("('NULL')", "NULL", all_rows_str)
                all_rows_str = re.sub("(,\))", ")", all_rows_str)
                all_rows_str = re.sub("(:)", "\:", all_rows_str)
                cols_str = re.sub("(,\))", ")", cols_str)
                
                sql_insert_commands.append(f"INSERT INTO {key} {cols_str} VALUES {all_rows_str};")
        return sql_insert_commands
    
    def _get_sql_meta_data(self):
        stmt =text("SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = N'test'")
        meta_data = {}
        with self.engine.connect() as conn:
            result = conn.execute(stmt)
            for row in result:
                if row[0] not in meta_data:
                        meta_data[row[0]] = []
                if row[1] != 'ID':
                    meta_data[row[0]].append(row[1])
            if self.verpose:
                if result.rowcount == 0:
                    print("No data found")
                else:
                    print(result.rowcount, "row(s) found")
            return meta_data

    def upload_data_to_sql(self, drop_tables=True, verbose=False):

        # Create a connection
        conn = self.engine.connect()

        # Get the inertion cmds
        insertion_time_s = time()
        sql_insert_cmds = self.get_insert_rows_commands()
        if verbose:
            print("Insertion Time = ", time() - insertion_time_s)

        if drop_tables:
            self._drop_tables(self.data_to_insert, conn)

        # Create tables
        pbar = tqdm(total=len(self.sql_table_creation_cmds),desc="Executing Schema Creation Commands",colour='#FFA500')
        self._execute_cmds(self.sql_table_creation_cmds, conn, pbar=pbar)
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()

        # Insert data
        pbar = tqdm(total=len(sql_insert_cmds), desc="Executing Insertion Commands",colour='#FFA500')
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        self._execute_cmds(sql_insert_cmds, conn, pbar=pbar)
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
        conn.commit()
        pbar_time += pbar.format_dict['elapsed']
        pbar.close()
        
        # Close the connection
        conn.close()
        return len(sql_insert_cmds) + len(self.sql_table_creation_cmds), pbar_time

    def _drop_tables(self, data, conn):
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        for key in data.keys():
            if '*' in key:
                key = re.sub("(\*)","_star", key)
            if '@' in key:
                key = re.sub("(@)","_", key)
            # if 'range' in key:
            #     key = re.sub("range","range_", key)
            conn.execute(text(f"drop table if exists {key};"))
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))

    def _execute_cmds(self, sql_cmds, conn, pbar=None):
        for cmd in sql_cmds:
            if '*' in cmd:
                cmd = re.sub("(\*)","_star", cmd)
            if '@' in cmd:
                cmd = re.sub("(@)","_", cmd)
            # if 'range' in cmd:
            #     cmd = re.sub("range","range_", cmd)

            # To execute the SQL query
            conn.execute(text(cmd))

            # To commit the changes
            conn.commit()

            if pbar is not None:
                pbar.update(1)
    


def neem_collection_to_sql(name, collection:list, sql_creator:SQLCreator, neem_id=None, pbar=None, verbose=False):
    if len(collection) == 0:
        if verbose:
            print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    meta_sql_creator = SQLCreator(engine=sql_creator.engine, verbose=verbose)

    if neem_id is not None:
        [doc.update({"neem_id":deepcopy(neem_id)}) for doc in collection]

    start = time()
    for doc in collection:
        meta_sql_creator.find_relationships(name, doc)
    meta_sql_creator.filter_null_tables()
    sql_creator.not_always_there.extend(meta_sql_creator.not_always_there)
    sql_creator.one_item_lists.extend(meta_sql_creator.one_item_lists)
    if verbose:
        print("find_relationships_time = ", time() - start)

    start = time()
    for doc in collection:
        sql_creator.convert_to_sql(name, doc)
        if pbar is not None:
            [pb.update(1) for pb in pbar]
    if verbose:
        print("convert_to_sql_time = ", time() - start)

    if neem_id is not None:
        sql_creator.add_fk("neems", name, "neem_id", parent_col_name="_id")


def json_to_sql(top_table_name, json_data, sqlalachemy_engine, filter_doc=None, drop_tables=True, value_mapping_func=None, pbar=None, verbose=False):
    n_doc = 0
    sql_creator = SQLCreator(value_mapping_func=value_mapping_func, engine=sqlalachemy_engine)
    funcs = [sql_creator.find_relationships, sql_creator.convert_to_sql]
    for f_i, func in enumerate(funcs):
        for doc in json_data:
            name = None
            if n_doc == 0:
                name = top_table_name
            elif filter_doc is not None:
                name, doc, iri = filter_doc(doc)
                if doc is None:
                    continue
                if name is None:
                    name = top_table_name
                elif f_i == 0:
                    sql_creator.name_type[iri] = name
                if np.iterable(name) and not isinstance(name, str):
                    for n in name:
                        func(n, doc)
                        if pbar is not None:
                            pbar.update(1)
                        n_doc += 1
                    continue
            func(name, doc)
            if pbar is not None:
                pbar.update(1)
            n_doc += 1
        if f_i == 0:
            sql_creator.filter_null_tables()
    sql_creator.reference_to_existing_table()
    if verbose:
        print("number_of_json_documents = ", n_doc)
    sql_creator.upload_data_to_sql(drop_tables=drop_tables, verbose=verbose)

def dict_to_sql(data, sql_creator:SQLCreator, neem_id=None, pbar=None, verbose=False):
    neem_id_val = mon2py(deepcopy(neem_id)) if neem_id is not None else None
    for key, docs in data.items():
        if '"' in key:
            key = re.sub('(\")',"", key)
        for doc in docs:
            doc['neem_id'] = neem_id_val
            sql_creator.convert_to_sql(key, doc)
            sql_creator.add_fk('neems', key, 'neem_id', parent_col_name="_id")
            if pbar is not None:
                [pb.update(1) for pb in pbar]

def link_predicate_tables(sql_creator:SQLCreator, use_pbar=True):
    data_to_insert_cp = deepcopy(sql_creator.data_to_insert)
    pbar = None
    total = 0
    if use_pbar:
        total = sum([len(v) for k, v in data_to_insert_cp.items()])
        pbar = tqdm(total=total, desc="Linking Predicate Tables", colour="#FFA500")
    for key, cols in data_to_insert_cp.items():
        for i, (col_name, col_data) in enumerate(cols.items()):
                if pbar is not None:
                    pbar.update(1)
                if type(col_data[0]) != str:
                    continue
                sql_creator.sql_table_creation_cmds.add(f"CREATE INDEX IF NOT EXISTS {key+'_'+col_name+'_idx'} ON {key} ({col_name});")
    pbar_time = 0
    if pbar is not None:
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()
    return total, pbar_time

def link_tf_and_triples(data:dict, sql_creator:SQLCreator, use_pbar=True):
    time_start = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['o'])
    tsi = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['dul_TimeInterval_s'])
    tei = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['dul_TimeInterval_s'])
    time_end = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['o'])
    e_neem_id = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['neem_id'])
    s_neem_id = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['neem_id'])
    stamp = np.array(data['tf_header']['stamp'])
    links = np.array(data['tf']['child_frame_id'])
    stamp_neem_id = np.array(data['tf']['neem_id'])
    latest_stampidx, latest_sidx, latest_eidx = 0, 0, 0
    if 'tf_header' in sql_creator.sql_meta_data:
        latest_stampidx = sql_creator.get_max_id_from_sql('tf_header')
    if 'soma_hasIntervalBegin' in sql_creator.sql_meta_data:
        latest_sidx = sql_creator.get_max_id_from_sql('soma_hasIntervalBegin')
    if 'soma_hasIntervalEnd' in sql_creator.sql_meta_data:
        latest_eidx = sql_creator.get_max_id_from_sql('soma_hasIntervalEnd')
    e_idx_list = []
    s_idx_list = []
    stamp_idx = []
    pbar = None
    if use_pbar:
        pbar = tqdm(total=len(time_end), desc="Linking TF and Triples", colour="#FFA500")
    for e_idx, e in enumerate(time_end):
        neem_id_cond = np.equal(s_neem_id, e_neem_id[e_idx])
        time_interval_cond = np.equal(tsi, tei[e_idx])
        s_idicies = np.argwhere(np.logical_and(time_interval_cond,neem_id_cond)).flatten()
        # if len(s_idx) > 1:
            # raise Exception(f"more than one start time for end time\n{e_idx}\n{e}\n{s_idx}\n{time_start[s_idx]}\n{time_end[e_idx]}\n{e_neem_id[e_idx]}\n{s_neem_id[s_idx]}\n{tsi[s_idx]}\n{tei[e_idx]}")
        for s_idx in s_idicies:
            s = time_start[s_idx]
            cond1 = np.greater_equal(stamp, s)
            cond2 = np.less(stamp, e)
            cond3 = np.logical_and(np.equal(e_neem_id[e_idx], stamp_neem_id), np.equal(s_neem_id[s_idx], stamp_neem_id))
            cond4 = True
            res = np.argwhere(np.logical_and(np.logical_and(np.logical_and(cond1, cond2), cond3), cond4)).flatten()
            res = res[np.argsort(stamp[res])]
            np.unique(res, return_index=True)
            encountered_links = []
            new_res = OrderedSet()
            for r in res:
                if links[r] in encountered_links:
                    continue
                else:
                    encountered_links.append(links[r])
                    new_res.add(r+1)
            encountered_links = []
            for r in reversed(res):
                if links[r] in encountered_links:
                    continue
                else:
                    encountered_links.append(links[r])
                    new_res.add(r+1)
            new_res = list(new_res)
            assert all([r-1 in res for r in new_res])
            assert all([stamp[r-1] >= s and stamp[r-1] < e for r in new_res])
            res = [r + latest_stampidx for r in new_res]
            if len(res) > 0:
                stamp_idx.extend(res)
                e_idx_list.extend([e_idx+1+latest_eidx]*len(res))
                s_idx_list.extend([s_idx+1+latest_sidx]*len(res))
        if pbar is not None:
            pbar.update(1)
    pbar_time = 0
    if pbar is not None:
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()
    new_table_name = sql_creator.link_column_to_new_table('tf_header', 'soma_hasIntervalBegin', stamp_idx, s_idx_list)
    sql_creator.add_fk_column('soma_hasIntervalEnd', new_table_name, 'soma_hasIntervalEnd_ID')
    sql_creator.data_to_insert[new_table_name]['soma_hasIntervalEnd_ID'] = e_idx_list
    return len(time_end), pbar_time

def mongo_collection_to_list_of_dicts(collection):
    return [doc for doc in collection.find({})]

def link_and_upload(sql_creator:SQLCreator, predicate_sql_creator:SQLCreator, data_sizes, data_times, reset=False, drop=False):

    total_time = 0
    data = sql_creator.data_to_insert
    predicate_linking_sz, predicate_linking_time = link_predicate_tables(predicate_sql_creator)
    total_time += predicate_linking_time
    data_sizes['predicate_linking'].append(predicate_linking_sz)
    data_times['predicate_linking'].append(predicate_linking_time)
    tf_triples_linking_sz, tf_triples_linking_time = link_tf_and_triples(data, predicate_sql_creator)
    total_time += tf_triples_linking_time
    data_sizes['tf_triples_linking'].append(tf_triples_linking_sz)
    data_times['tf_triples_linking'].append(tf_triples_linking_time)

    sql_creator.merge_with(predicate_sql_creator)
    data_upload_sz, data_upload_time = sql_creator.upload_data_to_sql(drop_tables=drop)
    total_time += data_upload_time
    data_sizes['data_upload'].append(data_upload_sz)
    data_times['data_upload'].append(data_upload_time)

    if reset:
        sql_creator.reset_data()
        predicate_sql_creator.reset_data()

    return total_time
    

if __name__ == "__main__":

    # Parse command line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('--verbose', '-v', action='store_true')
    parser.add_argument('--append_to_sql', '-ap', action='store_true')
    parser.add_argument('--sql_url_env_var', '-su', default="LOCAL_SQL_URL")
    args = parser.parse_args()
    verbose = args.verbose
    append_to_sql = args.append_to_sql
    sql_url_env_var = args.sql_url_env_var

    # Replace the uri string with your MongoDB deployment's connection string.
    MONGODB_URI = os.environ["LOCAL_MONGODB_URI"]
    # set a 5-second connection timeout
    client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
    try:
        client.server_info()
        # print(client.server_info())
    except Exception:
        print("Unable to connect to the server.")

    # Create SQL engine
    sql_url = os.environ["LOCAL_SQL_URL2"]
    engine = create_engine(sql_url)

    db = client.neems
    t2sql = TriplesToSQL()
    sql_creator = SQLCreator(engine, tosql_func=lambda v, table_name:get_sql_type_from_pyval(v))
    predicate_sql_creator = SQLCreator(engine, tosql_func=t2sql.get_sql_type)


    # Adding meta data
    meta = db.meta
    meta_lod = mongo_collection_to_list_of_dicts(meta)
    if not append_to_sql:
        neem_collection_to_sql("neems",
                          meta_lod,
                          sql_creator=sql_creator, verbose=verbose)
    meta_lod = list(reversed(meta_lod))
    batch_sz = 4
    if append_to_sql:
        first_n_batches = 0
        start_from = 20
    else:
        first_n_batches = 1
        start_from = 0
    meta_lod_batches = [meta_lod[i:i + batch_sz] for i in range(0, len(meta_lod), batch_sz)]
    first_n_batches = first_n_batches if first_n_batches > 0 else len(meta_lod_batches) - start_from
    coll_names = ['tf', 'triples', 'annotations', 'inferred']
    verification_time = 0
    total_time = 0
    tf_len = []
    for batch_idx, batch in enumerate(meta_lod_batches[start_from:start_from+first_n_batches]):

        verification = tqdm(total=batch_sz*4, desc=f"Verifying Data (batch {batch_idx+start_from})", colour='#FFA500')

        for d_i, doc in enumerate(batch):

            id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    t2sql.mongo_triples_to_graph(lod)
                    lod = t2sql.graph_to_dict()
                elif cname == 'tf':
                    tf_len.append(len(lod))
                verification.update(1)
        verification_time += verification.format_dict['elapsed']
        verification.close()
    if verbose:
        print("tf_len", tf_len)
    total_time += verification_time

    total_meta_time = 0
    total_creation_time = 0
    total_tf_creation_time = 0
    total_triples_creation_time = 0
    data_sizes = {c:[] for c in coll_names}
    data_sizes.update({'predicate_linking':[], 'tf_triples_linking':[], 'data_upload':[]})
    data_times = {c:[] for c in coll_names}
    data_times.update({'predicate_linking':[], 'tf_triples_linking':[], 'data_upload':[]})
    for batch_idx, batch in enumerate(meta_lod_batches[start_from:start_from+first_n_batches]):
        all_docs = 0
        collections = {}
        meta_data = tqdm(total=batch_sz*4, desc=f"Collecting & Restructuring Data (batch {batch_idx+start_from})", colour='#FFA500')
        for d_i, doc in enumerate(batch):

            id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    t2sql.mongo_triples_to_graph(lod)
                    lod = t2sql.graph_to_dict()
                    sz = sum([len(v) for v in lod.values()])
                else:
                    sz = len(lod)
                all_docs += sz
                collections[id+'_'+cname] = {'name':cname,'data':lod, 'id':doc['_id']}
                meta_data.update(1)
                if sz > 0:
                    data_sizes[cname].append(sz)
        total_meta_time += meta_data.format_dict['elapsed']
        meta_data.close()
        
        all_neems_pbar = tqdm(total=all_docs, desc="Generating SQL Commands", colour='#FFA500')

        for coll_i, (cname, coll) in enumerate(collections.items()):
            if len(coll['data']) == 0:
                continue
            neem_pbar = tqdm(total=len(coll['data']), desc=cname, colour='#FFA500', leave=False)
            if coll['name'] not in ['annotations', 'triples']:
                neem_collection_to_sql(coll['name'],
                                    coll['data'],
                                    sql_creator=sql_creator,
                                    neem_id=coll['id'], pbar=[neem_pbar, all_neems_pbar], verbose=verbose)
                total_tf_creation_time += neem_pbar.format_dict['elapsed']
            else:
                dict_to_sql(coll['data'],
                            predicate_sql_creator,
                            neem_id=coll['id'], pbar=[neem_pbar, all_neems_pbar], verbose=verbose)
                total_triples_creation_time += neem_pbar.format_dict['elapsed']
            neem_pbar.close()
            data_times[coll['name']].append(neem_pbar.format_dict['elapsed'])
        total_creation_time += all_neems_pbar.format_dict['elapsed']
        all_neems_pbar.close()

        if append_to_sql:
            link_and_upload_time = link_and_upload(sql_creator, predicate_sql_creator, data_sizes, data_times, reset=True)
            total_time += link_and_upload_time

    client.close()
    total_time += total_meta_time
    total_time += total_creation_time

    if not append_to_sql:
        link_and_upload_time = link_and_upload(sql_creator, predicate_sql_creator, data_sizes, data_times, reset=True, drop=True)
        total_time += link_and_upload_time

    data_stats = {'data_sizes':data_sizes, 'data_times':data_times}
    print("Verification Time = ", verification_time)
    print("Meta Time = ", total_meta_time)
    print("TF Creation Time = ", total_tf_creation_time)
    print("Triples Creation Time = ", total_triples_creation_time)
    print("Creation Time = ", total_creation_time)
    print("Predicate Linking Time = ", sum(data_times['predicate_linking']))
    print("TF Triples Linking Time = ", sum(data_times['tf_triples_linking']))
    print("Data Upload Time = ", sum(data_times['data_upload']))
    print("Total Time = ", total_time)

    with open('data_stats.pickle', 'wb') as f:
        pickle.dump(data_stats, f, protocol=pickle.HIGHEST_PROTOCOL)