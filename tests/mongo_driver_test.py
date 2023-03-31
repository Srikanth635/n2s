import os
from pymongo import MongoClient
from pymongo.cursor import CursorType
from bson.objectid import ObjectId


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
coll = db.get_collection('633592ff022842bd856ba42a_tf')
cursor = coll.find({})
n_doc = 0
for doc in cursor:
    n_doc += 1
    print(doc)
    # if doc['_id'] == ObjectId('5fdca422f5f14142fe678936'):
    #     print(doc['name'], doc['_id'])
print("number of docs = {}".format(n_doc))

client.close()