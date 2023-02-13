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

def getconn():
    c = create_engine('mysql+pymysql://{}:{}@{}:{}/{}?charset=utf8mb4'.format(User, Password, Host, 3306, 'test'))
    # c = pymysql.connect(host=Host, user=User, password=Password, database='test',)
    return c

mypool = pool.Pool(getconn, pre_ping=True, recycle=300)


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

def convert_to_tables(name, collection, neem_id):
    single_doc = collection.find_one({})
    if single_doc is None:
        print(f"NO DOCUMENTS FOUND FOR {name} with neem_id {str(neem_id)}")
        return []
    single_doc["neem_id"] = neem_id
    sql_table_creation_cmds = []
    sql_constraint_cmds = []
    # data_to_insert = {}
    def find_datatype(key, obj, first=False):
        if type(obj) == dict:
            # data_to_insert[key] = []
            # insert_string = f"INSERT INTO {key} VALUES"
            id_col_string = f"CREATE TABLE IF NOT EXISTS {key} ("
            id_col_string += f"ID INT NOT NULL"
            id_col_string += " AUTO_INCREMENT PRIMARY KEY);"# if first else " PRIMARY KEY);"
            sql_table_creation_cmds.append(id_col_string)
            for k, v in obj.items():
                # col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {k}"
                # print("key = ", k)
                v, v_type, v_iterable = find_datatype(k, v)
                if v_iterable:
                    # col_string += f"_fk INT NOT NULL, ADD FOREIGN KEY ({k}_fk) REFERENCES {k}(ID);"
                    # col_string = f"ALTER TABLE {key} ADD FOREIGN KEY (ID) REFERENCES {k}(ID);"
                    col_string = f"ALTER TABLE {k} ADD FOREIGN KEY (ID) REFERENCES {key}(ID);"
                else:
                    col_string = f"ALTER TABLE {key} ADD COLUMN IF NOT EXISTS {k}"
                    id = True if k in ['_id', 'neem_id'] else False
                    col_string += f" {py2sql(v_type, id=id)};"
                    # insert_string += f" {k} = {v}"
                    # data_to_insert[key].append((k, v))
                sql_table_creation_cmds.append(col_string)
            # primary_key_string = f"ALTER TABLE {key} ADD IF NOT EXISTS PRIMARY KEY (ID);"
            # insert_string += ";"
            # sql_table_creation_cmds.append(primary_key_string)
            # if insert_string[-7:] != "VALUES;":
            #     sql_insert_cmds.append(insert_string)
        elif iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            table_string = f"CREATE TABLE IF NOT EXISTS {key} ("
            table_string += "ID INT NOT NULL"
            table_string += " AUTO_INCREMENT,"
            table_string += " array_index INT,"
            if not first:
                table_string += " parent_fk INT,"
                sql_constraint_cmds.append("ALTER TABLE {name} ADD FOREIGN KEY (parent_fk) REFERENCES {name}(ID);")
            i = 0
            created_values = False
            for v in obj:
                v, v_type, v_iterable = find_datatype(key+'_object', v)
                # This means we are in the meta file, which we know the structure of.
                if v_iterable and not created_values:
                    table_string += " object_fk INT,"
                    table_string += f" project_{i}"
                    table_string += "_fk INT NOT NULL,"
                    table_string += f"FOREIGN KEY (object_fk) REFERENCES {key+'_object'}(ID),"
                    created_values = True
                elif not created_values:
                    table_string += " array_values"
                    id = True if key in ['_id', 'neem_id'] else False
                    table_string += f" {py2sql(v_type, id=id)}, "
                    created_values = True
                    # insert_string += f" {k} = {v}"
                    # data_to_insert[key].append((k, v))
                i += 1
            table_string += f"PRIMARY KEY (ID));"
            # insert_string += ";"
            sql_table_creation_cmds.append(table_string)
        else:
            obj = mon2py(obj)
            print(type(obj))
            print(obj)
        return obj, type(obj), iterable(obj) and type(obj) != str
    find_datatype(name, single_doc, first=True)
    [print(sql_table_creation_cmds[i]) for i in range(len(sql_table_creation_cmds))]
    # [print(sql_insert_cmds[i]) for i in range(len(sql_insert_cmds))]
    return sql_table_creation_cmds


def insert_to_tables(name, collection, neem_id):
    all_docs = collection.find({}, cursor_type=CursorType.EXHAUST)
    data_to_insert = {}
    sql_insert_commands = ["SET FOREIGN_KEY_CHECKS=0;"]
    def insert_doc(key, obj, first=False):
        if type(obj) == dict:
            data_inserted = False
            for k, v in obj.items():
                v, v_type, v_iterable = insert_doc(k, v)
                if key not in data_to_insert.keys():
                        data_to_insert[key] = []
                if v_iterable:
                    if not data_inserted:
                        data_to_insert[key].append(['NULL'])
                        data_inserted = True
                else:
                    # if key not in data_to_insert.keys():
                    #     data_to_insert[key] = []
                    if not data_inserted:
                        data_to_insert[key].append(['NULL', v])
                    else:
                        data_to_insert[key][-1].append(v)
                    data_inserted = True
            if data_inserted:
                data_to_insert[key][-1] = tuple(data_to_insert[key][-1])
        elif iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            for v in obj:
                v, v_type, v_iterable = insert_doc(key, v)
        else:
            obj = mon2py(obj)
        return obj, type(obj), iterable(obj) and type(obj) != str
    
    n_doc = 0
    for doc in all_docs:
        n_doc += 1
        doc["neem_id"] = neem_id
        insert_doc(name, doc, first=True)
    print(f"THIS NEEM WITH ID {str(neem_id)} HAS {n_doc} DOCUMENTS")
    for key, rows in data_to_insert.items():
        # all_rows_str = ""
        # for i, row in enumerate(rows):
        #     str_row = str(row)
        #     if len(row) > 0:
        #         str_row = f'(NULL, {str_row[1:]}'
        #     else:
        #         str_row = f'(NULL)'
        #     all_rows_str += str_row
        #     if i != len(rows)-1 :
        #         all_rows_str += ', '
        all_rows_str = str(rows).strip('[]')
        all_rows_str = re.sub("('NULL')", "NULL", all_rows_str)
        all_rows_str = re.sub("(,\))", ")", all_rows_str)
        sql_insert_commands.append(f"INSERT INTO {key} VALUES {all_rows_str};")
    sql_insert_commands.append("SET FOREIGN_KEY_CHECKS=1;")
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
# meta = db.meta
# print("=============meta types")
# print_all_collection_types(meta)
# sql_table_creation_cmds.extend(convert_to_tables("neems", meta))
# sql_insert_cmds.extend(insert_to_tables("neems", meta))

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
    print("=============tf types")
    print_all_collection_types(tf)
    creation_time_s = time()
    sql_table_creation_cmds.extend(convert_to_tables("tf", tf, neem_id=doc['_id']))
    print("Creation Time = ", time() - creation_time_s)
    insertion_time_s = time()
    sql_insert_cmds.extend(insert_to_tables("tf", tf, neem_id=doc['_id']))
    print("Insertion Time = ", time() - insertion_time_s)
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
conn = mypool.connect()

# Create a cursor object
cur  = conn.cursor()
  
# cur.execute("SHOW DATABASES")
# databaseList = cur.fetchall()
  
# for database in databaseList:
#   print(database)

cur.execute("DROP TABLE IF EXISTS translation")
cur.execute("DROP TABLE IF EXISTS rotation")
cur.execute("DROP TABLE IF EXISTS header")
cur.execute("DROP TABLE IF EXISTS transform")
cur.execute("DROP TABLE IF EXISTS tf")

conn.commit()
# cur.execute("CREATE TABLE neems ")
for cmd in sql_table_creation_cmds:
    # # To execute the SQL query
    cur.execute(cmd)

    # # To commit the changes
    conn.commit()

for cmd in sql_insert_cmds:
    # # To execute the SQL query
    cur.execute(cmd)
   
    # # To commit the changes
    conn.commit()
  
conn.close()

