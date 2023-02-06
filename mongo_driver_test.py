import os
from pymongo import MongoClient


# Replace the uri string with your MongoDB deployment's connection string.
MONGODB_URI = os.environ["MONGODB_URI"]
# set a 5-second connection timeout
client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000)
try:
    print(client.server_info())
except Exception:
    print("Unable to connect to the server.")