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


# mongo_to_python_conversions
def mon2py(val):
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

def insert_column_and_value(data_to_insert, table_name, column_name, v, v_type):
    key = table_name
    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {column_name}"
    id = True if column_name in ['_id', 'neem_id'] else False
    data_type = py2sql(v_type, id=id)
    if data_type is not None:
        col_string += f" {data_type}"
        if id:
            col_string += " NOT NULL"
            if column_name == '_id':
                col_string += " UNIQUE"
        col_string += ";"
    else:
        col_string = ""
    
    # Insertion
    v = 'NULL' if v is None else v
    v = -1 if v == float('inf') else v
    if column_name not in data_to_insert[key].keys():
        # The NULL values here are for previous rows that did not have a value for this column
        n_rows = len(data_to_insert[key]['ID']) - 1
        data_to_insert[key][column_name] = ['NULL']*n_rows + [v]
    else:
        data_to_insert[key][column_name].append(v)
    return col_string

class SQLCreator():
    def __init__(self) -> None:
        self.not_always_there = []
        self.sql_table_creation_cmds = []
        self.data_to_insert = {}
        self.meta_data = {}
        self.all_obj_keys = {}
        
    def reset_data(self):
        self.sql_table_creation_cmds = []
        self.data_to_insert = {}
    
    def find_relationships(self, key, obj, parent_key=None, parent_iterable=False, avoid_links=None):
        if '#' in key:
            key = key.split('#')[1]
        if type(obj) == dict:       
            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            if key in self.all_obj_keys.keys():
                for k in obj.keys():
                    if k not in self.all_obj_keys[key]:
                        self.not_always_there.append(key+'.'+k)

            else:
                self.all_obj_keys[key] = {}
                for k, v in obj.items():
                    if '#' in k:
                        k = k.split('#')[1]
                    if type(v) in [dict, list]:
                        self.find_relationships(k, v, key, parent_iterable=parent_iterable, avoid_links=avoid_links)
                    self.all_obj_keys[key][k] = {}
        elif np.iterable(obj) and type(obj) != str:
            for v in obj:
                if type(v) not in [dict, list]:
                    v = {'value':v}
                self.find_relationships(parent_key+'_'+key+'_object', v, parent_key+'_'+key, parent_iterable=True, avoid_links=avoid_links)
        else:
            self.all_obj_keys[key] = []

    def convert_to_sql(self, key, obj, parent_key=None, parent_iterable=False, avoid_links=None):
        ID = None
        if '#' in key:
            key = key.split('#')[1]
        if type(obj) == dict:
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);"
            if id_col_string not in self.sql_table_creation_cmds:
                self.sql_table_creation_cmds.append(id_col_string)
            
            if avoid_links is not None:
                obj_cp = deepcopy(obj)
                for k, v in obj_cp.items():
                    if '#' in k:
                        k = k.split('#')[1]
                    if (f"{key+'_'+k}",f"{key}_ID",f"{key}", "ID") in avoid_links: # means it was a list
                        obj[k] = v[0]
                    elif (f"{k}","ID",f"{key}", "ID") in avoid_links: # means it was a dict
                        obj.update(v)

            # if key == 'scope':
            #     print("scope")

            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            if key in self.data_to_insert.keys():
                # if parent_iterable:
                if type(self.data_to_insert[key]) == dict:
                    all_keys_exist = all([k in self.data_to_insert[key].keys() for k in obj.keys()])
                for k, v in obj.items():
                    if type(v) != list:
                        if key+'.'+k in self.not_always_there:
                            obj[k] = [v]
            else:
                self.data_to_insert[key] = {}
                self.data_to_insert[key]['ID'] = []
                ID = 1

            # Now that the keys exist, this would check if the values also exist, if it does then skip it, and use old one ID.
            # This is to get all values of all columns and put them together to for a complete row in the table
            # key is table name (here it is the dict key),
            #  and the keys and values of that dict are the column_names and their respective values
            # For example: self.data_to_insert['neems']['ID'] = [id1, id2, id3], where 'neems' is the table name
            # 'ID' is the column_name, and 'id1' to 'id3' are 3 values for 3 different rows in the 'ID' column.
            if all_keys_exist:
                rows = zip(*tuple([self.data_to_insert[key][k] for k in obj.keys()]))
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
                ID = len(self.data_to_insert[key]['ID']) + 1

            # Add new ID for the new entry.
            self.data_to_insert[key]['ID'].append('NULL')



            # Go through all columns, create them if new, and create foreign keys to nested tables/dicts
            # Finally insert values.
            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                v, v_type, v_iterable, v_id = self.convert_to_sql(k, v, parent_key=key, parent_iterable=False)

                if v_iterable:
                    if v_type != dict:
                        col_string = f"ALTER TABLE {key+'_'+k} ADD FOREIGN KEY IF NOT EXISTS ({key}_ID) REFERENCES {key}(ID);"                            
                    else:
                        col_string = f"ALTER TABLE {k} ADD FOREIGN KEY IF NOT EXISTS (ID) REFERENCES {key}(ID);"
                else:
                    # Values are inserted here for non nested columns (i.e. non iterable columns except for str)
                    col_string = insert_column_and_value(self.data_to_insert, key, k, v, v_type)

                if len(col_string) > 0:
                    if col_string not in self.sql_table_creation_cmds:
                        self.sql_table_creation_cmds.append(col_string)
            for k, v in self.data_to_insert[key].items():
                if k not in obj.keys() and k != "ID":
                    self.data_to_insert[key][k].append('NULL')
        elif np.iterable(obj) and type(obj) != str:
            # Creation
            id_col_string = f"CREATE TABLE IF NOT EXISTS {parent_key+'_'+key} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,"
            if parent_key is None:
                parent_key = "parent"
            id_col_string += f"{parent_key}_ID INT NULL);"
            if id_col_string not in self.sql_table_creation_cmds:
                self.sql_table_creation_cmds.append(id_col_string)
            
            # if key == 'scope':
            #     print("scope")
            
            normal_v = []
            if avoid_links is not None:
                obj_cp = deepcopy(obj)
                for v in obj_cp:
                    if (f"{parent_key}+'_'+{key}",f"{parent_key+'_'+key}_index",f"{parent_key+'_'+key}_object", "ID") in avoid_links: # means it was a list
                        v_iterable = np.iterable(v) and type(v) != str
                        if v_iterable:
                            if type(v) == dict:
                                v = list(v.values())[0]
                            else:
                                v = v[0]
                        normal_v.append(v)

            # Insertion
            if parent_key+'_'+key not in self.data_to_insert.keys():
                self.data_to_insert[parent_key+'_'+key] = {}
                self.data_to_insert[parent_key+'_'+key]['ID'] = []
                self.data_to_insert[parent_key+'_'+key][parent_key+'_ID'] = []
            parent_id = len(self.data_to_insert[parent_key]['ID'])
            i = 1

            for v in obj:
                # Insertion
                self.data_to_insert[parent_key+'_'+key][parent_key+'_ID'].append(parent_id)
                self.data_to_insert[parent_key+'_'+key]['ID'].append('NULL')
                if ((not np.iterable(v)) or type(v) == str) and v not in normal_v:
                    v = {'value':v}
                # if v == {'@list':[]}:
                #     print("hey")
                v, v_type, v_iterable, v_id = self.convert_to_sql(parent_key+'_'+key+'_object', v, parent_key=parent_key+'_'+key, parent_iterable=True)

                # This means we are in the meta file, which we know the structure of.
                if v_iterable:
                    # links.append((f"{parent_key}+'_'+{key}",f"{parent_key+'_'+key}_index",f"{parent_key+'_'+key}_object", "ID"))
                    if v_id is None:
                        raise ValueError("v_id is None, but it should not be.")
                    col_string = f"ALTER TABLE {parent_key+'_'+key} ADD COLUMN IF NOT EXISTS {parent_key+'_'+key}_index INT NULL;"
                    if col_string not in self.sql_table_creation_cmds:
                        self.sql_table_creation_cmds.append(col_string)
                    col_string = f"ALTER TABLE {parent_key+'_'+key} ADD FOREIGN KEY IF NOT EXISTS ({parent_key+'_'+key}_index) REFERENCES {parent_key+'_'+key}_object(ID);"

                    # Insertion
                    if parent_key+'_'+key+'_index' not in self.data_to_insert[parent_key+'_'+key].keys():
                        self.data_to_insert[parent_key+'_'+key][parent_key+'_'+key+'_index'] = [v_id]
                    else:
                        self.data_to_insert[parent_key+'_'+key][parent_key+'_'+key+'_index'].append(v_id)

                else:
                    # Insertion
                    # self.data_to_insert[key][key+'_index'].append(parent_id)
                    col_string = insert_column_and_value(self.data_to_insert, parent_key+'_'+key, f'{parent_key}_{key}_values', v, v_type)

                i += 1
                if len(col_string) > 0:
                    if col_string not in self.sql_table_creation_cmds:
                        self.sql_table_creation_cmds.append(col_string)
        else:
            obj = mon2py(obj)
        return obj, type(obj), np.iterable(obj) and type(obj) != str, ID

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
            for doc in all_docs_list:
                sql_creator.convert_to_sql(name, doc)
            done = True
        except errors.InvalidBSON:
            doc = None
            print(f"BSON Error at doc with ID {last_doc_id} for {name} with neem_id {neem_id}")
            all_docs = db.get_collection(str(neem_id) + "_" + name).find({"_id":{"$gt":last_doc_id}}, cursor_type=CursorType.EXHAUST)
    sql_table_creation_cmds = sql_creator.sql_table_creation_cmds
    data_to_insert = sql_creator.data_to_insert
    if neem_id is not None:
        col_string = f"ALTER TABLE {name} ADD FOREIGN KEY IF NOT EXISTS (neem_id) REFERENCES neems(_id);"
        if col_string not in sql_table_creation_cmds:
            sql_table_creation_cmds.append(col_string)
    print(n_doc)
    return sql_table_creation_cmds, data_to_insert

def json_to_sql(top_table_name, json_data, sqlalachemy_engine, filter_doc=None, drop_tables=True):
    n_doc = 0
    sql_creator = SQLCreator()
    for doc in json_data:
        if n_doc == 0:
            name = top_table_name
        elif filter_doc is not None:
            name, doc = filter_doc(doc)
            if doc is None:
                continue
            if name is None:
                name = top_table_name
            if np.iterable(name) and not isinstance(name, str):
                for n in name:
                    sql_creator.convert_to_sql(n, doc)
                    n_doc += 1
                continue
        sql_creator.convert_to_sql(name, doc)
        n_doc += 1
    sql_creation_cmds = sql_creator.sql_table_creation_cmds
    data_to_insert = sql_creator.data_to_insert
    child_table_names = []
    child_table_cols = []
    parent_table_names = []
    parent_table_cols = []
    indicies_to_remove = []
    table_name_to_remove = []
    links = []
    for i, cmd in enumerate(sql_creation_cmds):
        if "FOREIGN KEY" in cmd:
            child_table_names.append(cmd.split("TABLE ")[1].split(" ADD")[0])
            child_table_cols.append(cmd.split("EXISTS ")[1].split(" REFERENCES")[0].strip("()"))
            parent_table_names.append(cmd.split("REFERENCES ")[1].split("(")[0])
            parent_table_cols.append(cmd.split("REFERENCES ")[1].split("(")[1].split(")")[0])
            len_parent_table_col = len(data_to_insert[parent_table_names[-1]][parent_table_cols[-1]])
            len_child_table_col = len(data_to_insert[child_table_names[-1]][child_table_cols[-1]])
            if len_parent_table_col != len_child_table_col:
                continue
            indicies_to_remove.append(i)
            # table_name_to_remove.append(child_table_names[-1])
            links.append((child_table_names[-1], child_table_cols[-1], parent_table_names[-1], parent_table_cols[-1]))
    # links = list(zip(child_table_names, child_table_cols, parent_table_names, parent_table_cols))
    # links_copy = deepcopy(links)
    # links = [i for j, i in enumerate(links_copy) if j not in indicies_to_remove]
    # print(links)
    # exit()
    # for i, cmd in enumerate(sql_creation_cmds):
    #     if "CREATE TABLE" in cmd:
    #         if cmd.split("EXISTS ")[1].split(" (")[0] in table_name_to_remove:
    #             indicies_to_remove.append(i)
    #     if "ALTER TABLE" in cmd:
    #         if cmd.split("TABLE ")[1].split(" ADD")[0] in table_name_to_remove:
    #             indicies_to_remove.append(i)
    # # remove unneeded foreign key commands
    # sql_creation_cmds = [i for j, i in enumerate(sql_creation_cmds) if j not in indicies_to_remove]
    # for child_table_name, child_table_col, parent_table_name, parent_table_col in links:
    #     len_parent_table_col = len(data_to_insert[parent_table_name][parent_table_col])
    #     len_child_table_col = len(data_to_insert[child_table_name][child_table_col])
    #     if len_parent_table_col != len_child_table_col:
    #         continue
    #     indices = [i for i, x in enumerate(parent_table_names) if x == child_table_name]
    #     for i in indices:
    n_doc = 0
    sql_creator = SQLCreator()
    for doc in json_data:
        if n_doc == 0:
            name = top_table_name
        elif filter_doc is not None:
            name, doc = filter_doc(doc)
            if doc is None:
                continue
            if name is None:
                name = top_table_name
            if np.iterable(name) and not isinstance(name, str):
                for n in name:
                    sql_creator.convert_to_sql(n, doc, avoid_links=links)
                    n_doc += 1
                continue
        sql_creator.convert_to_sql(name, doc, avoid_links=links)

    sql_creation_cmds = sql_creator.sql_table_creation_cmds
    data_to_insert = sql_creator.data_to_insert

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
        # tf = db.get_collection(id + '_tf')
        # neem_collection_to_sql("tf",
        #                        tf,
        #                        sql_creator=sql_creator,
        #                        neem_id=doc['_id'])
        # annotations = db.get_collection(id + '_annotations')
        # neem_collection_to_sql("annotations",
        #                   annotations,
        #                   sql_creator=sql_creator,
        #                   neem_id=doc['_id'])
        triples = db.get_collection(id + '_triples')
        neem_collection_to_sql("triples",
                          triples,
                          sql_creator=sql_creator,
                          neem_id=doc['_id'])
        # inferred = db.get_collection(id + '_inferred')
        # neem_collection_to_sql("inferred",
        #                   inferred,
        #                   sql_creator=sql_creator,
        #                   neem_id=doc['_id'])
        if n_doc >= 1:
            break

    client.close()
    print("Creation Time = ", time() - creation_time_s)
    print("number of docs = {}".format(n_doc))
     
    # create tables and upload data to the sql database
    sql_url = os.environ["LOCAL_SQL_URL"]
    engine = create_engine(sql_url)
    sql_creator.upload_data_to_sql(sqlalchemy_engine=engine)