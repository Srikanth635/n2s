import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId
import pymysql

ObjectId.__str__
# Replace the uri string with your MongoDB deployment's connection string.
MONGODB_URI = os.environ["MONGODB_URI"]
# set a 5-second connection timeout
client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000)

try:
    client.server_info()
    # print(client.server_info())
except Exception:
    print("Unable to connect to the server.")

db = client.neems

# print(db.meta.find_one({"name":"DEFAULT NEEM DO NOT DELETE"})['url'])
cursor = db.meta.find({},projection={"name":1},cursor_type=CursorType.EXHAUST)
all_neems = {}
n_doc = 0
for doc in cursor:
    n_doc += 1
    # print(doc)
    name = str(doc['_id'])
    tf = db.get_collection(name + '_tf')
    print(type(tf.find_one({})['transform']['translation']['x']))
    break
    annotations = db.get_collection(str(doc['_id']) + '_annotations')
    triples = db.get_collection(str(doc['_id']) + '_triples')
    inferred = db.get_collection(str(doc['_id']) + '_inferred')
    all_neems[name] = {'tf':tf, 'annotations':annotations, 'triples':triples, 'inferred':inferred}
    # print(all_neems[name])
    # if doc['_id'] == ObjectId('5fdca422f5f14142fe678936'):
    #     print(doc['name'], doc['_id'])

print("number of docs = {}".format(n_doc))


client.close()