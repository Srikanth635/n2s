import os
from sqlalchemy import create_engine, text
from rdflib import Graph, URIRef, RDF, RDFS, OWL, Literal, Namespace

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
ORDER BY _id;"""))

g = Graph()
soma = Namespace("http://www.ease-crc.org/ont/SOMA.owl#")
g.bind("soma", soma)

for v in curr:
    # print(type(v[0]))
    g.add((URIRef(v[0]), URIRef(v[1]), URIRef(v[2])))
    # break
conn.commit()
conn.close()

sql_creation_cmds = []
tables = {}
# sql_creation_cmds.append('DROP TABLE IF EXISTS `triples_restructured`;')
# sql_creation_cmds.append('CREATE TABLE `triples_restructured` (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);')
# get all named individuals in the object position
# for every named individual, get all triples where the subject is the named individual
for s, p, o in g.triples((None, None, OWL.NamedIndividual)):
    # print(s)
    # get class of the named individual
    for s1, p1, o1 in g.triples((s, RDF.type, None)):
        if o1 != OWL.NamedIndividual:
            class_name = o1.split('#')[1]
            # print("type = ", o1)
            # create a table for the class if it doesn't exist
            tables[class_name] = tables.get(o1, {"uri": o1, "columns": []})
            # get all triples where the subject is the named individual
            for s1, p1, o1 in g.triples((s, None, o1)):
                # get the property
                p1 = p1.split('#')[1]
                # print("property = ", p1)
                # get the object
                o1 = o1.split('#')[1]
                # print("object = ", o1)
                # create a column for the property if it doesn't exist
                if o1 in tables.keys():
                    tables[o1]["columns"].append(p1)
    # print('====================')
print(tables)