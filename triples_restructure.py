import os
from sqlalchemy import create_engine, text
from rdflib import Graph, URIRef

# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# User name of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
# get a connection
mypool = create_engine('mysql+pymysql://{}:{}@{}/{}?charset=utf8mb4'.format(User, Password, Host, 'test'), pool_pre_ping=True, pool_recycle=300, pool_timeout=500)
conn = mypool.connect()


curr = conn.execute(text("""SELECT s, p, o
FROM test.triples
WHERE graph = 'user'
ORDER BY _id
LIMIT 1000;"""))

g = Graph()

for v in curr:
    # print(type(v[0]))
    g.add((URIRef(v[0]), URIRef(v[1]), URIRef(v[2])))
    # break
conn.commit()
conn.close()
