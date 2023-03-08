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
from sqlalchemy import text
from copy import deepcopy
from orderedset import OrderedSet


# mongo_to_python_conversions
def mon2py(val, name=None):
    if type(val) == Decimal128:
        return float(val.to_decimal())
    elif type(val) == ObjectId:
        return str(val)
    elif type(val) == datetime:
        return val.timestamp()
    else:
        return val

def py2sql(val_type, id=False):
    if id:
        return 'VARCHAR(24)'
    elif val_type == int:
        return 'INT'
    elif val_type == float:
        return 'DOUBLE'
    elif val_type == str:
        return 'LONGTEXT'
    elif val_type == bool:
        return 'BOOLEAN'
    elif val_type == None:
        return None
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
    def __init__(self, value_mapping_func=None) -> None:
        self.not_always_there = []
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
        self.meta_data = {}
        self.all_obj_keys = {}
        self.one_item_lists = []
        self.not_one_item_lists = []
        self.name_type = {}
        self.value_mapping_func = value_mapping_func if value_mapping_func is not None else mon2py
        
    def reset_data(self):
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
    
    def insert_column_and_value(self, table_name, column_name, v, v_type):
        key = table_name
        id = True if column_name in ['_id', 'neem_id'] else False
        data_type = py2sql(v_type, id=id)
        if data_type is not None:
            null, unique = True, False
            if id:
                null = False
                if column_name == '_id':
                    unique = True
            self.add_col(key, column_name, data_type, NULL=null, UNIQUE=unique)
        
        # Insertion
        v = 'NULL' if v is None else v
        v = -1 if v == float('inf') else v
        if column_name not in self.data_to_insert[key].keys():
            # The NULL values here are for previous rows that did not have a value for this column
            n_rows = len(self.data_to_insert[key]['ID']) - 1
            self.data_to_insert[key][column_name] = ['NULL']*n_rows + [v]
        else:
            self.data_to_insert[key][column_name].append(v)
    
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

            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
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
                if type(v) not in [dict, list]:
                    v = {'value':v}
                self.find_relationships(key, v, table_name)
        else:
            self.all_obj_keys[key] = []

    def convert_to_sql(self, key, obj, parent_key=None, key_iri='', parent_key_iri='', parent_table_name=''):
        
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
        if parent_key is not None and type(obj) == str and parent_key_iri != '' and '_' not in parent_key:
            if ' ' in obj or ',' in obj:
                obj = self.value_mapping_func(obj, name=parent_key_iri+parent_key)

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
                        del obj[orig_k]
                        obj[orig_k] = [v]
                elif key+'.'+k in self.one_item_lists and key+'.'+k not in self.not_always_there:
                        if type(v[0]) == dict:
                            del obj[orig_k]
                            for k2, v2 in v[0].items():
                                if k2 == '@value':
                                    obj[orig_k] = v2
                                else:
                                    obj[orig_k+'_'+k2] = v2
                        else:
                            obj[orig_k] = v[0]

            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            if table_name in self.data_to_insert.keys():
                # if parent_iterable:
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
            if all_keys_exist:
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
                    self.insert_column_and_value(table_name, k, v, v_type)

            for k, v in self.data_to_insert[table_name].items():
                if k not in obj.keys() and k != "ID":
                    self.data_to_insert[table_name][k].append('NULL')

        elif np.iterable(obj) and type(obj) != str:
            # Creation
            table_name = parent_key+'_'+key
            id_col_string = f"CREATE TABLE IF NOT EXISTS {table_name} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,"
            if parent_key is None:
                parent_key = "parent"
            id_col_string += f"{parent_key}_ID INT NULL);"
            self.sql_table_creation_cmds.add(id_col_string)

            self.add_fk(parent_table_name=parent_table_name, table_name=table_name, col_name=parent_key+'_ID')
            
            # element position index column
            self.add_col(table_name, 'list_index', 'INT', 'NULL')

            # Insertion
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                self.data_to_insert[table_name][parent_key+'_ID'] = []
                self.data_to_insert[table_name]['list_index'] = []
            parent_id = len(self.data_to_insert[parent_key]['ID'])
            i = 1

            for v in obj:
                # Insertion
                self.data_to_insert[table_name][parent_key+'_ID'].append(parent_id)
                self.data_to_insert[table_name]['ID'].append('NULL')
                self.data_to_insert[table_name]['list_index'].append(i)
                if ((not np.iterable(v)) or type(v) == str):
                    v = {'value':v}
                k_table_name = parent_key+'_'+key+'_value'
                v, v_type, v_iterable, v_id = self.convert_to_sql(key+'_value', v, parent_key=parent_key, parent_key_iri=iri, parent_table_name=table_name)

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
                    self.insert_column_and_value(table_name, f'{parent_key}_{key}_values', v, v_type)

                i += 1
        else:
            obj = self.value_mapping_func(obj, name=parent_key_iri+parent_key)
        return obj, type(obj), np.iterable(obj) and type(obj) != str, ID

    def link_column_to_exiting_table(self, table_name, col_name, type_name, indicies):
        self.data_to_insert[table_name][col_name] = indicies
        self.sql_table_creation_cmds.add(f"ALTER TABLE {table_name} DROP COLUMN IF EXISTS {col_name};")
        self.add_fk_column(parent_table_name=type_name, table_name=table_name, col_name=col_name)
    
    def add_fk_column(self, parent_table_name, table_name, col_name, parent_col_name='ID'):
        self.add_col(table_name, col_name, 'INT')
        self.add_fk(parent_table_name, table_name, col_name, parent_col_name)
    
    def add_fk(self, parent_table_name, table_name, col_name='ID', parent_col_name='ID'):
        col_string = f"ALTER TABLE {table_name} ADD FOREIGN KEY IF NOT EXISTS ({col_name}) REFERENCES {parent_table_name}({parent_col_name});"
        self.sql_table_creation_cmds.add(col_string)
    
    def add_col(self, table_name, col_name, col_type, NULL=True, KEY='', UNIQUE=False, DEFAULT=None, AUTO_INCREMENT=False):
        NULL = 'NOT NULL' if not NULL else 'NULL'
        UNIQUE = 'UNIQUE' if UNIQUE else ''
        AUTO_INCREMENT = 'AUTO_INCREMENT' if AUTO_INCREMENT else ''
        col_string = f"ALTER TABLE {table_name} ADD COLUMN IF NOT EXISTS {col_name} {col_type} {NULL} {KEY} {AUTO_INCREMENT} {UNIQUE}"
        if DEFAULT is not None:
            col_string += f" DEFAULT {DEFAULT}"
        col_string += ';'
        self.sql_table_creation_cmds.add(col_string)
    
    def link_column_to_new_table(self, parent_table_name, type_name, instance_table_indicies, original_table_indicies):
        # Creation
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

    def upload_data_to_sql(self, sqlalchemy_engine, drop_tables=True):

        # Create a connection
        conn = sqlalchemy_engine.connect()

        # Get the inertion cmds
        insertion_time_s = time()
        sql_insert_cmds = self.get_insert_rows_commands()
        print("Insertion Time = ", time() - insertion_time_s)

        if drop_tables:
            self._drop_tables(self.data_to_insert, conn)

        # Create tables
        self._execute_cmds(self.sql_table_creation_cmds, conn)
        
        # Insert data
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        self._execute_cmds(sql_insert_cmds, conn)
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
        conn.commit()
        
        # Close the connection
        conn.close()

    def _drop_tables(self, data, conn):
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        for key in data.keys():
            if '*' in key:
                key = re.sub("(\*)","_star", key)
            if '@' in key:
                key = re.sub("(@)","_", key)
            if 'range' in key:
                key = re.sub("range","range_", key)
            conn.execute(text(f"drop table if exists {key};"))
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))

    def _execute_cmds(self, sql_cmds, conn):
        for cmd in sql_cmds:
            if '*' in cmd:
                cmd = re.sub("(\*)","_star", cmd)
            if '@' in cmd:
                cmd = re.sub("(@)","_", cmd)
            if 'range' in cmd:
                cmd = re.sub("range","range_", cmd)
            # # To execute the SQL query
            conn.execute(text(cmd))
        
            # # To commit the changes
            conn.commit()

def neem_collection_to_sql(name, collection, sql_creator=None, neem_id=None):
    single_doc = collection.find_one({})
    if single_doc is None:
        print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    all_docs = collection.find({}, cursor_type=CursorType.EXHAUST)
    if sql_creator is None:
        sql_creator = SQLCreator()
    meta_sql_creator = SQLCreator()
    n_doc = 0
    done = False
    last_doc_id = None
    while not done:
        try:
            all_docs_list = []
            for doc in all_docs:
                last_doc_id = doc['_id']
                n_doc += 1
                if neem_id is not None:
                    doc["neem_id"] = deepcopy(neem_id)
                all_docs_list.append(doc)
            for doc in all_docs_list:
                meta_sql_creator.find_relationships(name, doc)
            sql_creator.not_always_there.extend(meta_sql_creator.not_always_there)
            sql_creator.one_item_lists.extend(meta_sql_creator.one_item_lists)
            for doc in all_docs_list:
                sql_creator.convert_to_sql(name, doc)
            done = True
        except errors.InvalidBSON:
            doc = None
            print(f"BSON Error at doc with ID {last_doc_id} for {name} with neem_id {neem_id}")
            all_docs = db.get_collection(str(neem_id) + "_" + name).find({"_id":{"$gt":last_doc_id}}, cursor_type=CursorType.EXHAUST)
    if neem_id is not None:
        sql_creator.add_fk("neems", name, "neem_id", parent_col_name="_id")
    sql_table_creation_cmds = sql_creator.sql_table_creation_cmds
    data_to_insert = sql_creator.data_to_insert
    print(n_doc)
    return sql_table_creation_cmds, data_to_insert

def json_to_sql(top_table_name, json_data, sqlalachemy_engine, filter_doc=None, drop_tables=True, value_mapping_func=None):
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
                        n_doc += 1
                    continue
            func(name, doc)
            n_doc += 1
    sql_creator.reference_to_existing_table()
    print("number_of_json_documents = ", n_doc)
    sql_creator.upload_data_to_sql(drop_tables=drop_tables, sqlalchemy_engine=sqlalachemy_engine)

if __name__ == "__main__":

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
    sql_creator = SQLCreator()
    all_collections_data_to_insert = {}
    all_collections_creation_cmds = []
    meta = db.meta
    neem_collection_to_sql("neems",
                      meta,
                      sql_creator=sql_creator)

    cursor = db.meta.find({},cursor_type=CursorType.EXHAUST)
    all_neems = {}
    neem_ids = []
    n_doc = 0
    creation_time_s = time()
    for doc in cursor:
        n_doc += 1
        print(doc)
        id = str(doc['_id'])
        neem_ids.append(id)
        tf = db.get_collection(id + '_tf')
        neem_collection_to_sql("tf",
                               tf,
                               sql_creator=sql_creator,
                               neem_id=doc['_id'])
        annotations = db.get_collection(id + '_annotations')
        neem_collection_to_sql("annotations",
                          annotations,
                          sql_creator=sql_creator,
                          neem_id=doc['_id'])
        triples = db.get_collection(id + '_triples')
        neem_collection_to_sql("triples",
                          triples,
                          sql_creator=sql_creator,
                          neem_id=doc['_id'])
        inferred = db.get_collection(id + '_inferred')
        neem_collection_to_sql("inferred",
                          inferred,
                          sql_creator=sql_creator,
                          neem_id=doc['_id'])
        if n_doc >= 1:
            break

    client.close()
    print("Creation Time = ", time() - creation_time_s)
    print("number of docs = {}".format(n_doc))
     
    # create tables and upload data to the sql database
    sql_url = os.environ["LOCAL_SQL_URL"]
    engine = create_engine(sql_url)
    sql_creator.upload_data_to_sql(sqlalchemy_engine=engine)