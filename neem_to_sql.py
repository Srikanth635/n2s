import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId
from bson.decimal128 import Decimal128
import pymysql
from numpy import iterable
import decimal

# mongo_to_python_conversions
def mon2py(val):
    if type(val) == Decimal128:
        return float(val.to_decimal())
    elif type(val) == ObjectId:
        return str(val)
    else:
        return val

def py2sql(val_type):
    if val_type == int:
        return 'int'

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

def convert_to_tables(name, collection):
    single_doc = collection.find_one({})
    sql_commands = []
    def find_datatype(key, obj, first=False):
        if type(obj) == dict:
            table_string = f"CREATE TABLE {key} ("
            table_string += "ID int NOT NULL,"
            for k, v in obj.items():
                table_string += f"{k}"
                print("key = ", k)
                v_type, v_iterable = find_datatype(k, v)
                if v_iterable:
                    table_string += "_fk int,"
                    table_string += f"FOREIGN KEY ({k}_fk) REFERENCES {k}(ID),"
                else:
                    table_string += f" {v_type}"
        elif iterable(obj) and type(obj) != str:
            print("iterable of type ", type(obj))
            for v in obj:
                find_datatype(v)
        else:
            obj = mon2py(obj)
            print(type(obj))
            print(obj)
        return type(obj), iterable(obj)
    find_datatype(single_doc, first=True)

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
cursor = db.meta.find({},cursor_type=CursorType.EXHAUST)
all_neems = {}
neem_ids = []
n_doc = 0
for doc in cursor:
    n_doc += 1
    # print(doc)
    id = str(doc['_id'])
    neem_ids.append(id)
    tf = db.get_collection(id + '_tf')
    print("=============tf types")
    print_all_collection_types(tf)
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

