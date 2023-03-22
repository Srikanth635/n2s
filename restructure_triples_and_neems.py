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
from sqlalchemy import create_engine
from sqlalchemy import text, exc
from copy import deepcopy
from orderedset import OrderedSet
from triples_to_sql import TriplesToSQL, get_byte_size, get_sql_type_from_pyval
from tqdm import tqdm
import argparse


# mongo_to_python_conversions
def mon2py(val, name=None):
    if type(val) == Decimal128:
        return float(val.to_decimal())
    elif type(val) == ObjectId:
        return str(val)
    elif type(val) == datetime:
        return val.timestamp() + 60*60
    else:
        return val

def py2sql(val, table_name, column_name, id=False, type2sql_func=None):
    val_type = type(val)
    if val_type == None:
        return None, None
    elif id:
        return 'VARCHAR(24)', None
    elif type2sql_func is not None:
        return type2sql_func(val, table_name+'.'+column_name)
    else:
        ValueError(f"UNKOWN DATA TYPE {val_type}")

def print_all_collection_types(collection):
    single_doc = collection.find_one({})
    def find_datatype(obj):
        if type(obj) == dict:
            print("DICT")
            for k, v in obj.items():
                print("key = ", k)
                find_datatype(v)
        elif np.iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            for v in obj:
                find_datatype(v)
        else:
            # obj = mon2py(obj)
            print(type(obj))
            print(obj)
    find_datatype(single_doc)

class SQLCreator():
    def __init__(self, value_mapping_func=None, allowed_missing_percentage=5, tosql_func=None) -> None:
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

    def reset_data(self):
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
    
    def merge_with(self, sql_creator):
        self.sql_table_creation_cmds.update(sql_creator.sql_table_creation_cmds)
        self.data_to_insert.update(sql_creator.data_to_insert)
    
    def insert_column_and_value(self, table_name, column_name, v, null_prev_rows=True):
        id = True if column_name in ['_id', 'neem_id'] else False
        data_type, byte_sz = py2sql(v, id=id, type2sql_func=self.tosql_func, table_name=table_name, column_name=column_name)     
        # Insertion
        key = table_name
        v = 'NULL' if v is None else v
        v = -1 if v == float('inf') else v
        if column_name not in self.data_to_insert[key].keys():
            if data_type is not None:
                null, unique = True, False
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
        if '#' in key:
            key = key.split('#')[1]
        if type(obj) == dict:
            obj_k = list(map(lambda x: x.split('#')[1] if '#' in x else x, obj.keys()))
            if key in self.all_obj_keys.keys():
                for k, v in obj.items():
                    if '#' in k:
                        k = k.split('#')[1]
                    if k not in self.all_obj_keys[key]:
                        self.not_always_there.append(key+'.'+k)
                for k, v in self.all_obj_keys[key].items():
                    if k not in obj_k:
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
                        if key+'.'+k not in self.one_item_lists and key+'.'+k not in self.not_one_item_lists:
                            self.one_item_lists.append(key+'.'+k)
                    else:
                        if key+'.'+k not in self.not_one_item_lists:
                            self.not_one_item_lists.append(key+'.'+k)
                        if key+'.'+k in self.one_item_lists:
                            self.one_item_lists.remove(key+'.'+k)

            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                if type(v) in [dict, list]:
                    self.find_relationships(k, v, key)
                self.all_obj_keys[key][k] = {}
        elif np.iterable(obj) and type(obj) != str:
            table_name = parent_key+'_'+key
            for v in obj:
                # if type(v) not in [dict, list]:
                #     v = {'value':v}
                if type(v) == dict:
                    if len(v) == 1:
                        if table_name not in self.one_item_lists and table_name not in self.not_one_item_lists:
                            self.one_item_lists.append(table_name)
                    else:
                        if table_name not in self.not_one_item_lists:
                            self.not_one_item_lists.append(table_name)
                        if table_name in self.one_item_lists:
                            self.one_item_lists.remove(table_name)
                self.find_relationships(key, v, parent_key)
        else:
            self.all_obj_keys[key] = []

    def filter_null_tables(self):
        for key, all_count in self.obj_key_count.items():
            total_count = all_count['key_count']
            for k, count in all_count.items():
                if k == 'key_count':
                    continue
                if ((1 - count/total_count) * 100) > self.allowed_missing_percentage:
                    self.not_always_there.append(key+'.'+k)  

    def convert_to_sql(self, key, obj, parent_key=None,
                        key_iri='', parent_key_iri='', parent_table_name='',
                          parent_list=False, verbose=False):
        
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
            if table_name in self.data_to_insert.keys():
                if parent_list:
                    if type(self.data_to_insert[table_name]) == dict:
                        all_keys_exist = all([k in self.data_to_insert[table_name].keys() for k in obj.keys()])
            else:
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                ID = 1

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
                    ID = rows_list.index(row) + 1
                    return obj, type(obj), np.iterable(obj) and type(obj) != str, ID
                else:
                    ID = len(rows_list) + 1
                if verbose:
                    print("Time to check if all values exist: ", time()-start)
            elif ID is None:
                ID = len(self.data_to_insert[table_name]['ID']) + 1

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
                        if key+'.'+k in self.one_item_lists and key+'.'+k not in self.not_always_there:
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
            self.add_col(table_name, 'list_index', 'INT', 'NULL')

            # Insertion
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                if parent_key is not None:
                    self.data_to_insert[table_name][parent_key+'_ID'] = []
                self.data_to_insert[table_name]['list_index'] = []
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

    def link_column_to_exiting_table(self, table_name, col_name, type_name, indicies):
        if np.iterable(indicies[0]):
            for i,j in indicies:
                self.data_to_insert[table_name][col_name][i] = j
        else:
            self.data_to_insert[table_name][col_name] = indicies
        self.sql_table_creation_cmds.add(f"ALTER TABLE {table_name} MODIFY COLUMN {col_name} INT;")
        self.add_fk(parent_table_name=type_name, table_name=table_name, col_name=col_name)
    
    def add_fk_column(self, parent_table_name, table_name, col_name, parent_col_name='ID'):
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
    
    def get_id_from_sql(self, table_name, col_names, values):
        sql_cmd = f"SELECT ID FROM {table_name} WHERE "
        for i in range(len(col_names)):
            sql_cmd += f"{col_names[i]} = '{values[i]}' AND "
        
    
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

    def upload_data_to_sql(self, sqlalchemy_engine, drop_tables=True, verbose=False):

        # Create a connection
        conn = sqlalchemy_engine.connect()

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
        pbar.close()

        # Insert data
        pbar = tqdm(total=len(sql_insert_cmds), desc="Executing Insertion Commands",colour='#FFA500')
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        self._execute_cmds(sql_insert_cmds, conn, pbar=pbar)
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
        conn.commit()
        pbar.close()
        
        # Close the connection
        conn.close()

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
    


def neem_collection_to_sql(name, collection:list, sql_creator=None, neem_id=None, pbar=None, verbose=False):
    if len(collection) == 0:
        if verbose:
            print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    if sql_creator is None:
        sql_creator = SQLCreator()
    meta_sql_creator = SQLCreator()

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
    sql_creator = SQLCreator(value_mapping_func=value_mapping_func)
    funcs = [sql_creator.find_relationships, sql_creator.convert_to_sql]
    for f_i, func in enumerate(funcs):
        for doc in json_data:
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
    sql_creator.upload_data_to_sql(drop_tables=drop_tables, sqlalchemy_engine=sqlalachemy_engine)

def dict_to_sql(data, sql_creator=None, neem_id=None, pbar=None, verbose=False):
    if sql_creator is None:
        sql_creator = SQLCreator()
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

def link_predicate_tables(find_link_func, sql_creator, use_pbar=True):
    data_to_insert_cp = deepcopy(sql_creator.data_to_insert)
    if use_pbar:
        total = sum([len(v) for k, v in data_to_insert_cp.items() if k != 'rdf_type'])
        pbar = tqdm(total=total, desc="Linking Predicate Tables", colour="#FFA500")
    for key, cols in data_to_insert_cp.items():
        if key == 'rdf_type':
            continue
        for i, (col_name, col_data) in enumerate(cols.items()):
                all_ok = False
                prev_dtype = ''
                indicies = []
                had_int = False
                for v_i, v in enumerate(col_data):
                    idx, dtype = find_link_func(v, data_to_insert_cp)
                    all_ok = dtype != None
                    if not all_ok and col_name != 'ID' and had_int:
                        print(f"not all ok for {key} {col_name} {v} {dtype} {prev_dtype}")
                    if not all_ok:
                        break
                    prev_dtype = dtype
                    indicies.append((v_i, idx))
                if all_ok:
                    sql_creator.link_column_to_exiting_table(key, col_name,'rdf_type', indicies)
                if use_pbar:
                    pbar.update(1)
    if use_pbar:
        pbar.close()

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
    e_idx_list = []
    s_idx_list = []
    stamp_idx = []
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
            res = new_res
            if len(res) > 0:
                stamp_idx.extend(res)
                e_idx_list.extend([e_idx+1]*len(res))
                s_idx_list.extend([s_idx+1]*len(res))
        if use_pbar:
            pbar.update(1)
    if use_pbar:
        pbar.close()
    new_table_name = sql_creator.link_column_to_new_table('tf_header', 'soma_hasIntervalBegin', stamp_idx, s_idx_list)
    sql_creator.add_fk_column('soma_hasIntervalEnd', new_table_name, 'soma_hasIntervalEnd_ID')
    sql_creator.data_to_insert[new_table_name]['soma_hasIntervalEnd_ID'] = e_idx_list

def mongo_collection_to_list_of_dicts(collection):
    return [doc for doc in collection.find({})]
    


if __name__ == "__main__":

    # Parse command line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('--verbose', '-v', action='store_true')
    args = parser.parse_args()
    verbose = args.verbose

    # Replace the uri string with your MongoDB deployment's connection string.
    MONGODB_URI = os.environ["LOCAL_MONGODB_URI"]
    # set a 5-second connection timeout
    client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
    try:
        client.server_info()
        # print(client.server_info())
    except Exception:
        print("Unable to connect to the server.")

    db = client.neems
    t2sql = TriplesToSQL()
    sql_creator = SQLCreator(tosql_func=lambda v, table_name:get_sql_type_from_pyval(v))
    predicate_sql_creator = SQLCreator(tosql_func=t2sql.get_sql_type)


    # Adding meta data
    meta = db.meta
    meta_lod = mongo_collection_to_list_of_dicts(meta)
    neem_collection_to_sql("neems",
                      meta_lod,
                      sql_creator=sql_creator, verbose=verbose)
    meta_lod = list(reversed(meta_lod))
    batch_sz = 5
    first_n_batches = 12
    meta_lod_batches = [meta_lod[i:i + batch_sz] for i in range(0, len(meta_lod), batch_sz)]
    coll_names = ['tf', 'triples', 'annotations', 'inferred']
    for batch_idx, batch in enumerate(meta_lod_batches[:first_n_batches]):

        verification = tqdm(total=batch_sz*4, desc=f"Verifying Data (batch {batch_idx})", colour='#FFA500')

        for d_i, doc in enumerate(batch):

            id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    t2sql.mongo_triples_to_graph(lod)
                    lod = t2sql.graph_to_dict()
                verification.update(1)

        verification.close()

    for batch_idx, batch in enumerate(meta_lod_batches[:first_n_batches]):

        all_docs = 0
        creation_time_s = time()
        collections = {}
        meta_data = tqdm(total=batch_sz*4, desc=f"Collecting & Restructuring Data (batch {batch_idx})", colour='#FFA500')

        for d_i, doc in enumerate(batch):

            id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    t2sql.mongo_triples_to_graph(lod)
                    lod = t2sql.graph_to_dict()
                    all_docs += sum([len(v) for v in lod.values()])
                else:
                    all_docs += len(lod)
                collections[id+'_'+cname] = {'name':cname,'data':lod, 'id':doc['_id']}
                meta_data.update(1)

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
                                    neem_id=doc['_id'], pbar=[neem_pbar, all_neems_pbar], verbose=verbose)
        
            else:
                dict_to_sql(coll['data'],
                        sql_creator=predicate_sql_creator,
                        neem_id=doc['_id'], pbar=[neem_pbar, all_neems_pbar], verbose=verbose)
            neem_pbar.close()

        all_neems_pbar.close()
        
        if verbose:
            print("Creation Time = ", time() - creation_time_s)

    client.close()

    # create tables and upload data to the sql database
    sql_url = os.environ["LOCAL_SQL_URL"]
    engine = create_engine(sql_url)

    data = sql_creator.data_to_insert
   
    link_predicate_tables(t2sql.find_link_in_graph_dict, predicate_sql_creator)
    link_tf_and_triples(data, predicate_sql_creator)

    sql_creator.merge_with(predicate_sql_creator)
    sql_creator.upload_data_to_sql(sqlalchemy_engine=engine)