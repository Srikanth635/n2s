import pymongo
# Replace the uri string with your MongoDB deployment's connection string.
conn_str = "mongodb://neemReader:qEWRqc9UdN5TD7No7cjymUA8QEweNz@neem-3.informatik.uni-bremen.de:28015/neems"
# set a 5-second connection timeout
client = pymongo.MongoClient(conn_str, serverSelectionTimeoutMS=5000)
try:
    print(client.server_info())
except Exception:
    print("Unable to connect to the server.")