import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId
from bson.decimal128 import Decimal128
import pymysql
from numpy import iterable
import decimal
from datetime import datetime
import re
from time import time
import sqlalchemy.pool as pool
from sqlalchemy import create_engine
from sqlalchemy import text


RULE_BOOK = {("neems","projects"):"many2many"}

def getconn():
    # SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{User}:{Password}@{Host}/{'test'}"
    c = create_engine('mysql://{}:{}@{}/{}?charset=utf8mb4'.format(User, Password, Host, 'test'), pool_pre_ping=True, pool_recycle=500, pool_timeout=500)
    # c = pymysql.connect(host=Host, user=User, password=Password, database='test',)
    return c

# mypool = pool.Pool(getconn, pre_ping=True, recycle=300).connect()


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

def print_all_collection_types(collection):
    single_doc = collection.find_one({})
    def find_datatype(obj):
        if type(obj) == dict:
            print("DICT")
            for k, v in obj.items():
                print("key = ", k)
                find_datatype(v)
        elif iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            for v in obj:
                find_datatype(v)
        else:
            # obj = mon2py(obj)
            print(type(obj))
            print(obj)
    find_datatype(single_doc)

def insert_column_and_value(data_to_insert, table_name, column_name, data_inserted, v, v_type):
    key = table_name
    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {column_name}"
    id = True if key in ['_id', 'neem_id'] else False
    data_type = py2sql(v_type, id=id)
    if data_type is not None:
        col_string += f" {data_type};"
        created_values = True
    else:
        col_string = ""
        created_values = False
    
    # Insertion
    v = 'NULL' if v is None else v
    # if key not in data_to_insert.keys():
    # data_to_insert[key] = []
    if column_name not in data_to_insert[key].keys():
        data_to_insert[key][column_name] = [v]
    else:
        data_to_insert[key][column_name].append(v)
    # if 'ID' not in data_to_insert[key].keys():
    #     data_to_insert[key]['ID'] = ['NULL']
    # else:
    #     data_to_insert[key]['ID'].append('NULL')
    return col_string, created_values

data_to_insert = {}
def convert_to_tables(name, collection, neem_id=None):
    single_doc = collection.find_one({})
    all_docs = collection.find({}, cursor_type=CursorType.EXHAUST)
    if single_doc is None:
        print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    if neem_id is not None:
        single_doc["neem_id"] = neem_id
    sql_table_creation_cmds = []
    sql_constraint_cmds = []
    seen_keys = []
    global data_to_insert
    def find_datatype(key, obj, first=False, parent_key=None):
        ID = None
        if type(obj) == dict:
            data_inserted = False
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);"
            sql_table_creation_cmds.append(id_col_string)
            
            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            if key in data_to_insert.keys():
                if type(data_to_insert[key]) == dict:
                    all_keys_exist = all([k in data_to_insert[key].keys() for k in obj.keys()])
            else:
                data_to_insert[key] = {}
                data_to_insert[key]['ID'] = []

            # This is to get all values of all columns and put them together to for a complete row in the table
            # key is table name (here it is the dict key),
            #  and the keys and values of that dict are the column_names and their respective values
            # For example: data_to_insert['neems']['ID'] = [id1, id2, id3], where 'neems' is the table name
            # 'ID' is the column_name, and 'id1' to 'id3' are 3 values for 3 different rows in the 'ID' column.
            if all_keys_exist:
                rows = zip(*tuple([data_to_insert[key].values()]))
                rows_list = list(rows)
                row = tuple(tuple(obj.values())[0])
                all_values_exist = row in rows_list  
                if  all_values_exist:         
                    ID = rows_list.index(row) + 1
                    return obj, type(obj), iterable(obj) and type(obj) != str, ID
                else:
                    ID = len(rows_list) + 1
            data_to_insert[key]['ID'].append('NULL')
            for k, v in obj.items():
                # if (key,k) in seen_keys:
                    # continue
                v, v_type, v_iterable, v_id = find_datatype(k, v, parent_key=key)

                if v_iterable:
                    if v_type != dict:
                        col_string = f"ALTER TABLE {k} ADD FOREIGN KEY IF NOT EXISTS ({key}_ID) REFERENCES {key}(ID);"
                    else:
                        col_string = f"ALTER TABLE {k} ADD FOREIGN KEY IF NOT EXISTS (ID) REFERENCES {key}(ID);"
                else:
                    col_string, _ = insert_column_and_value(data_to_insert, key, k, data_inserted, v, v_type)
                    data_inserted = True

                if len(col_string) > 0:
                    sql_table_creation_cmds.append(col_string)
                    seen_keys.append((key,k))
        elif iterable(obj) and type(obj) != str:
            data_inserted = False
            # Creation
            print("iterable of type ", type(obj))
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,"
            if parent_key is None:
                parent_key = "parent"
            id_col_string += f"{parent_key}_ID INT NULL);"
            sql_table_creation_cmds.append(id_col_string)

            # Insertion
            if key not in data_to_insert.keys():
                data_to_insert[key] = {}
                data_to_insert[key][key+'_index'] = []
                data_to_insert[key][parent_key+'_ID'] = []
                data_to_insert[key]['ID'] = []
            parent_id = len(data_to_insert[parent_key]['ID'])
            i = 1

            created_values = False
            for v in obj:
                # Insertion
                data_to_insert[key][parent_key+'_ID'].append(parent_id)
                data_to_insert[key]['ID'].append('NULL')

                v, v_type, v_iterable, v_id = find_datatype(key+'_object', v, parent_key=key)

                # This means we are in the meta file, which we know the structure of.
                if v_iterable and not created_values:
                    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {key}_index INT NULL;"
                    # sql_table_creation_cmds.append(col_string)
                    col_string = f"ALTER TABLE {key} ADD FOREIGN KEY IF NOT EXISTS ({key}_index) REFERENCES {key}_object(ID);"

                    # Insertion
                    data_to_insert[key][key+'_index'].append(v_id)

                    # created_values = True
                elif not created_values:
                    # Insertion
                    # data_to_insert[key][key+'_index'].append(parent_id)
                    col_string, created_values = insert_column_and_value(data_to_insert, key, f'{key}_values', data_inserted, v, v_type)
                    data_inserted = True

                i += 1
                if len(col_string) > 0:
                    sql_table_creation_cmds.append(col_string)
        else:
            obj = mon2py(obj)
            print(type(obj))
            print(obj)
        return obj, type(obj), iterable(obj) and type(obj) != str, ID
    # find_datatype(name, single_doc, first=True)
    n_doc = 0
    for doc in all_docs:
        first = True if n_doc == 0 else False
        n_doc += 1
        if neem_id is not None:
            doc["neem_id"] = neem_id
        find_datatype(name, doc, first=first)
    
    # sql_insert_commands.append("SET FOREIGN_KEY_CHECKS=1;")

    [print(sql_table_creation_cmds[i]) for i in range(len(sql_table_creation_cmds))]
    return sql_table_creation_cmds

def get_insert_rows_commands(data_to_insert, columns_to_insert=None):
    sql_insert_commands = []
    for key, rows_dict in data_to_insert.items():
        
        if columns_to_insert is not None:
            cols = columns_to_insert[key]
            cols_str = str(cols).strip('[]')
        rows_list = list(zip(*tuple([rows_dict])))
        all_rows_str = str(rows_list).strip('[]')
        all_rows_str = re.sub("('NULL')", "NULL", all_rows_str)
        all_rows_str = re.sub("(,\))", ")", all_rows_str)
        
        if columns_to_insert is not None:
            sql_insert_commands.append(f"INSERT INTO {key} {cols_str} VALUES {all_rows_str};")
        else:
            sql_insert_commands.append(f"INSERT INTO {key} VALUES {all_rows_str};")
    return sql_insert_commands

def insert_to_tables(name, collection, neem_id=None):
    all_docs = collection.find({}, cursor_type=CursorType.EXHAUST)
    data_to_insert = {}
    sql_insert_commands = ["SET FOREIGN_KEY_CHECKS=0;"]
    columns_to_insert = {}
    def insert_doc(key, obj, first=False, parent_key=None):
        if type(obj) == dict:
            data_inserted = False
            for k, v in obj.items():
                v, v_type, v_iterable = insert_doc(k, v, parent_key=key)
                if key not in data_to_insert.keys():
                        data_to_insert[key] = {}
                        columns_to_insert[key] = {}
                if v_iterable:
                    if not data_inserted:
                        data_to_insert[k] = []
                        # data_to_insert[key].append(['NULL'])
                        # columns_to_insert[key].append(['ID'])
                        data_inserted = True
                    data_to_insert[k][key+'_ID'] = id
                else:
                    # if key not in data_to_insert.keys():
                        # data_to_insert[key] = []
                    if not data_inserted:
                        data_to_insert[key].append(['NULL', v])
                        columns_to_insert[key].append(['ID', k])
                    else:
                        data_to_insert[key][-1].append(v)
                        columns_to_insert[key][-1].append(k)
                    data_inserted = True
            if data_inserted:
                data_to_insert[key][-1] = tuple(data_to_insert[key][-1])
                columns_to_insert[key][-1] = tuple(columns_to_insert[key][-1])
        elif iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,"
            # if (name,key) in RULE_BOOK.keys():
            #     relation =  RULE_BOOK[(name, key)]
            # else:
            #     relation = "one2many"
            # if relation == "one2many":
            #     id_col_string += f"{key}_index INT NOT NULL, {name}_ID INT NOT NULL);"
            # elif relation == "many2many":
            #     id_col_string += f"{key}_index INT NULL, {name}_ID INT NULL);"
            if parent_key is None:
                parent_key = "parent"
            id_col_string += f"{key}_index INT NULL, {parent_key}_ID INT NULL);"
            sql_table_creation_cmds.append(id_col_string)
            # sql_table_creation_cmds.append(f"ALTER TABLE {key} ADD PRIMARY KEY (ID,{key}_index);")
            # sql_table_creation_cmds.append(f"ALTER TABLE {key} ADD FOREIGN KEY IF NOT EXISTS ({name}_ID) REFERENCES {name}(ID);")
            data_to_insert[key][key+'_index'] = []
            data_to_insert[key][parent_key+'_ID'] = []
            data_to_insert[key]['ID'] = 'NULL'
            i = 0
            created_values = False
            for v in obj:
                data_to_insert[key][key+'_index'].append(i)
                data_to_insert[key][parent_key+'_ID'].append(parent_id)
                v, v_type, v_iterable = insert_doc(key+'_object', v, parent_key=key)
                # This means we are in the meta file, which we know the structure of.
                if v_iterable and not created_values:
                    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {key}_index INT NULL;"
                    sql_table_creation_cmds.append(col_string)
                    col_string = f"ALTER TABLE {key} ADD FOREIGN KEY IF NOT EXISTS ({key}_index) REFERENCES {key}_object(ID);"
                    created_values = True
                elif not created_values:
                    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {key}_values"
                    id = True if key in ['_id', 'neem_id'] else False
                    data_type = py2sql(v_type, id=id)
                    if data_type is not None:
                        col_string += f" {data_type};"
                        created_values = True
                    else:
                        col_string = ""
                i += 1
                if len(col_string) > 0:
                    sql_table_creation_cmds.append(col_string)
        else:
            obj = mon2py(obj)
        return obj, type(obj), iterable(obj) and type(obj) != str
    
    n_doc = 0
    monitor_ndoc = 0
    for doc in all_docs:
        n_doc += 1
        monitor_ndoc += 1
        if neem_id is not None:
            doc["neem_id"] = neem_id
            # if "projects" in doc.keys():
            #     doc["projects"]
        insert_doc(name, doc, first=True)
        if monitor_ndoc >= 100000:
            sql_insert_commands.extend(get_insert_rows_commands(data_to_insert))
            data_to_insert = {}
            monitor_ndoc = 0
    if monitor_ndoc > 0:
        sql_insert_commands.extend(get_insert_rows_commands(data_to_insert))
    sql_insert_commands.append("SET FOREIGN_KEY_CHECKS=1;")
    print(f"THIS NEEM WITH ID {str(neem_id)} HAS {n_doc} DOCUMENTS")
    return sql_insert_commands

# Replace the uri string with your MongoDB deployment's connection string.
MONGODB_URI = os.environ["LOCAL_MONGODB_URI"]
# set a 5-second connection timeout
client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000)

try:
    client.server_info()
    # print(client.server_info())
except Exception:
    print("Unable to connect to the server.")

db = client.neems

# print(db.meta.find_one({"name":"DEFAULT NEEM DO NOT DELETE"})['url'])
sql_table_creation_cmds = []
sql_insert_cmds = []
meta = db.meta
print("=============meta types")
print_all_collection_types(meta)
creation_cmds = convert_to_tables("neems", meta)
sql_table_creation_cmds.extend(creation_cmds)
# sql_insert_cmds.extend(data_to_insert)

cursor = db.meta.find({},cursor_type=CursorType.EXHAUST)
all_neems = {}
neem_ids = []
n_doc = 0
for doc in cursor:
    n_doc += 1
    # print(doc)
    print(doc)
    id = str(doc['_id'])
    neem_ids.append(id)
    tf = db.get_collection(id + '_tf')
    # print("=============tf types")
    # print_all_collection_types(tf)
    creation_time_s = time()
    creation_cmds = convert_to_tables("tf", tf, neem_id=doc['_id'])
    sql_table_creation_cmds.extend(creation_cmds)
    print("Creation Time = ", time() - creation_time_s)
    # insertion_time_s = time()
    sql_insert_cmds.extend(get_insert_rows_commands(data_to_insert))
    # print("Insertion Time = ", time() - insertion_time_s)
    if n_doc >= 1:
        break
    continue
    annotations = db.get_collection(id + '_annotations')
    print("============annotation types")
    print_all_collection_types(annotations)
    triples = db.get_collection(id + '_triples')
    print("============triples types")
    print_all_collection_types(triples)
    inferred = db.get_collection(id + '_inferred')
    print("============infered types")
    print_all_collection_types(inferred)
    break
    all_neems[id] = {'tf':tf, 'annotations':annotations, 'triples':triples, 'inferred':inferred, 'meta_data':doc}
    # print(all_neems[name])
    # if doc['_id'] == ObjectId('5fdca422f5f14142fe678936'):
    #     print(doc['name'], doc['_id'])

print("number of docs = {}".format(n_doc))
# [print("meta data", all_neems[id]['meta_data']) for id in neem_ids]


client.close()


import os


# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# User name of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
# conn  = pymysql.connect(host=Host, user=User, password=Password, database='test',)
# get a connection
mypool = create_engine('mysql+pymysql://{}:{}@{}/{}?charset=utf8mb4'.format(User, Password, Host, 'test'))
conn = mypool.connect()

# Create a cursor object
# cur  = conn.cursor()
cur = conn
# cur.execute(text("SHOW DATABASES"))
# databaseList = cur.fetchall()
  
# for database in databaseList:
#   print(database)
cur.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
cur.execute(text("DROP TABLE IF EXISTS projects"))
cur.execute(text("DROP TABLE IF EXISTS activity"))
cur.execute(text("DROP TABLE IF EXISTS projects_object"))
cur.execute(text("DROP TABLE IF EXISTS keywords"))
cur.execute(text("DROP TABLE IF EXISTS neems"))
cur.execute(text("DROP TABLE IF EXISTS translation"))
cur.execute(text("DROP TABLE IF EXISTS rotation"))
cur.execute(text("DROP TABLE IF EXISTS header"))
cur.execute(text("DROP TABLE IF EXISTS transform"))
cur.execute(text("DROP TABLE IF EXISTS tf"))
cur.execute(text("SET FOREIGN_KEY_CHECKS=1;"))

conn.commit()
# cur.execute(text("CREATE TABLE neems "))
for cmd in sql_table_creation_cmds:
    # # To execute the SQL query
    cur.execute(text(cmd))

    # # To commit the changes
    conn.commit()

for cmd in sql_insert_cmds:
    # # To execute the SQL query
    cur.execute(text(cmd))
   
    # # To commit the changes
    conn.commit()
  
conn.close()

