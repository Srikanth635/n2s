import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId
from bson.decimal128 import Decimal128
from bson import errors
import pymysql
import numpy as np
import decimal
from datetime import datetime
import re
from time import time
import sqlalchemy.pool as pool
from sqlalchemy import create_engine
from sqlalchemy import text


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
    id = True if key in ['_id', 'neem_id'] else False
    data_type = py2sql(v_type, id=id)
    if data_type is not None:
        col_string += f" {data_type};"
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

data_to_insert = {}
def convert_to_tables(name, collection, neem_id=None):
    single_doc = collection.find_one({})
    all_docs = collection.find({}, cursor_type=CursorType.EXHAUST)
    if single_doc is None:
        print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    if neem_id is not None:
        single_doc["neem_id"] = neem_id
    global sql_table_creation_cmds
    global data_to_insert
    def find_datatype(key, obj, first=False, parent_key=None, parent_iterable=False):
        ID = None
        if type(obj) == dict:
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);"
            if id_col_string not in sql_table_creation_cmds:
                sql_table_creation_cmds.append(id_col_string)
            
            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            if key in data_to_insert.keys():
                if parent_iterable:
                    if type(data_to_insert[key]) == dict:
                        all_keys_exist = all([k in data_to_insert[key].keys() for k in obj.keys()])
                for k in obj.keys():
                    if k not in data_to_insert[key].keys() and (not np.iterable(obj[k]) or type(obj[k])==str):
                        obj[k] = [obj[k]] # WARNING: Need to check if I need to do that everytime I encounter it again.
            else:
                data_to_insert[key] = {}
                data_to_insert[key]['ID'] = []
                ID = 1

            # Now that the keys exist, this would check if the values also exist, if it does then skip it, and use old one ID.
            # This is to get all values of all columns and put them together to for a complete row in the table
            # key is table name (here it is the dict key),
            #  and the keys and values of that dict are the column_names and their respective values
            # For example: data_to_insert['neems']['ID'] = [id1, id2, id3], where 'neems' is the table name
            # 'ID' is the column_name, and 'id1' to 'id3' are 3 values for 3 different rows in the 'ID' column.
            if all_keys_exist:
                rows = zip(*tuple([data_to_insert[key][k] for k in obj.keys()]))
                rows_list = list(rows)
                row = tuple(obj.values())
                if np.iterable(row):
                    row = tuple(row)
                all_values_exist = row in rows_list  
                if  all_values_exist:         
                    ID = rows_list.index(row) + 1
                    return obj, type(obj), np.iterable(obj) and type(obj) != str, ID
                else:
                    ID = len(rows_list) + 1

            # Add new ID for the new entry.
            data_to_insert[key]['ID'].append('NULL')


            # Go through all columns, create them if new, and create foreign keys to nested tables/dicts
            # Finally insert values.
            for k, v in obj.items():
                v, v_type, v_iterable, v_id = find_datatype(k, v, parent_key=key, parent_iterable=False)

                if v_iterable:
                    if v_type != dict:
                        col_string = f"ALTER TABLE {k} ADD FOREIGN KEY IF NOT EXISTS ({key}_ID) REFERENCES {key}(ID);"                            
                    else:
                        col_string = f"ALTER TABLE {k} ADD FOREIGN KEY IF NOT EXISTS (ID) REFERENCES {key}(ID);"
                else:
                    # Values are inserted here for non nested columns (i.e. non iterable columns except for str)
                    col_string = insert_column_and_value(data_to_insert, key, k, v, v_type)

                if len(col_string) > 0:
                    if col_string not in sql_table_creation_cmds:
                        sql_table_creation_cmds.append(col_string)
            for k, v in data_to_insert[key].items():
                if k not in obj.keys() and k != "ID":
                    data_to_insert[key][k].append('NULL')
        elif np.iterable(obj) and type(obj) != str:
            # Creation
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,"
            if parent_key is None:
                parent_key = "parent"
            id_col_string += f"{parent_key}_ID INT NULL);"
            if id_col_string not in sql_table_creation_cmds:
                sql_table_creation_cmds.append(id_col_string)

            # Insertion
            if key not in data_to_insert.keys():
                data_to_insert[key] = {}
                data_to_insert[key]['ID'] = []
                data_to_insert[key][parent_key+'_ID'] = []
            parent_id = len(data_to_insert[parent_key]['ID'])
            i = 1

            for v in obj:
                # Insertion
                data_to_insert[key][parent_key+'_ID'].append(parent_id)
                data_to_insert[key]['ID'].append('NULL')
                if (not np.iterable(v)) or type(v) == str:
                    v = {'value':v}
                v, v_type, v_iterable, v_id = find_datatype(key+'_object', v, parent_key=key, parent_iterable=True)

                # This means we are in the meta file, which we know the structure of.
                if v_iterable:
                    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {key}_index INT NULL;"
                    if col_string not in sql_table_creation_cmds:
                        sql_table_creation_cmds.append(col_string)
                    col_string = f"ALTER TABLE {key} ADD FOREIGN KEY IF NOT EXISTS ({key}_index) REFERENCES {key}_object(ID);"

                    # Insertion
                    if key+'_index' not in data_to_insert[key].keys():
                        data_to_insert[key][key+'_index'] = [v_id]
                    else:
                        data_to_insert[key][key+'_index'].append(v_id)

                else:
                    # Insertion
                    # data_to_insert[key][key+'_index'].append(parent_id)
                    col_string = insert_column_and_value(data_to_insert, key, f'{key}_values', v, v_type)

                i += 1
                if len(col_string) > 0:
                    if col_string not in sql_table_creation_cmds:
                        sql_table_creation_cmds.append(col_string)
        else:
            obj = mon2py(obj)
        return obj, type(obj), np.iterable(obj) and type(obj) != str, ID

    n_doc = 0
    done = False
    last_doc_id = None
    while not done:
        try:
            for doc in all_docs:
                last_doc_id = doc['_id']
                first = True if n_doc == 0 else False
                n_doc += 1
                if neem_id is not None:
                    doc["neem_id"] = neem_id
                find_datatype(name, doc, first=first)
            done = True
        except errors.InvalidBSON:
            doc = None
            print(f"BSON Error at doc with ID {last_doc_id} for {name} with neem_id {neem_id}")
            all_docs = db.get_collection(str(neem_id) + "_" + name).find({"_id":{"$gt":last_doc_id}}, cursor_type=CursorType.EXHAUST)
    print(n_doc)

def get_insert_rows_commands(data_to_insert, columns_to_insert=None, max_rows_per_cmd=100000):
    sql_insert_commands = []
    for key, rows_dict in data_to_insert.items():
        
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

sql_table_creation_cmds = []
meta = db.meta
print("=============meta types")
# print_all_collection_types(meta)
convert_to_tables("neems", meta)

cursor = db.meta.find({},cursor_type=CursorType.EXHAUST)
all_neems = {}
neem_ids = []
n_doc = 0
for doc in cursor:
    n_doc += 1
    print(doc)
    id = str(doc['_id'])
    neem_ids.append(id)
    tf = db.get_collection(id + '_tf')
    creation_time_s = time()
    convert_to_tables("tf", tf, neem_id=doc['_id'])
    print("Creation Time = ", time() - creation_time_s)

    annotations = db.get_collection(id + '_annotations')
    convert_to_tables("annotations", annotations, neem_id=doc['_id'])
    # print("============annotation types")
    # print_all_collection_types(annotations)
    triples = db.get_collection(id + '_triples')
    convert_to_tables("triples", triples, neem_id=doc['_id'])
    # print("============triples types")
    # print_all_collection_types(triples)
    inferred = db.get_collection(id + '_inferred')
    convert_to_tables("inferred", inferred, neem_id=doc['_id'])
    # print("============infered types")
    # print_all_collection_types(inferred)
    if n_doc >= 2:
        break
    continue
    all_neems[id] = {'tf':tf, 'annotations':annotations, 'triples':triples, 'inferred':inferred, 'meta_data':doc}
    # print(all_neems[name])
    # if doc['_id'] == ObjectId('5fdca422f5f14142fe678936'):
    #     print(doc['name'], doc['_id'])

insertion_time_s = time()
sql_insert_cmds = get_insert_rows_commands(data_to_insert)
print("Insertion Time = ", time() - insertion_time_s)

print("number of docs = {}".format(n_doc))

client.close()


import os


# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# User name of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
# get a connection
#, pool_pre_ping=True, pool_recycle=300, pool_timeout=500
mypool = create_engine('mysql+pymysql://{}:{}@{}/{}?charset=utf8mb4'.format(User, Password, Host, 'test'))
conn = mypool.connect()

conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
for key in data_to_insert.keys():
    if '*' in key:
        key = re.sub("(\*)","_star", key)
    conn.execute(text(f"drop table if exists {key};"))
conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))


conn.commit()
# conn.execute(text("CREATE TABLE neems "))
for cmd in sql_table_creation_cmds:
    if '*' in cmd:
        cmd = re.sub("(\*)","_star", cmd)
    # # To execute the SQL query
    conn.execute(text(cmd))

    # # To commit the changes
    conn.commit()

conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
for cmd in sql_insert_cmds:
    if '*' in cmd:
        cmd = re.sub("(\*)","_star", cmd)
    # # To execute the SQL query
    conn.execute(text(cmd))
   
    # # To commit the changes
    conn.commit()
conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
conn.commit()

  
conn.close()

