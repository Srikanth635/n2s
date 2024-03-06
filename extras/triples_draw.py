import os
from sqlalchemy import create_engine, text
from rdflib import Graph, URIRef
from rdflib.tools.rdf2dot import rdf2dot
from IPython.display import display, Image
from rdflib.extras.external_graph_libs import rdflib_to_networkx_multidigraph
import networkx as nx
import matplotlib.pyplot as plt
import pydotplus
import io


def visualize(g):
    stream = io.StringIO()
    rdf2dot(g, stream, opts = {display})
    os.system("dot -Tsvg -o test-ontology-visualization.svg")
    # dg = pydotplus.graph_from_dot_data(stream.getvalue())
    # png = dg.create_png()
    # display(Image(png))

# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# Username of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
# get a connection
mypool = create_engine('mysql+pymysql://{}:{}@{}/{}?charset=utf8mb4'.format(User, Password, Host, 'test'),
                       pool_pre_ping=True, pool_recycle=300, pool_timeout=500)
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
g.serialize(destination="triples_1000.ttl",format="turtle")
g.serialize(destination="triples_1000.json",format="json-ld")
print(g.serialize(format="json-ld"))

# url = os.path.join(os.getcwd(), '../triples.ttl')

# result = g.parse(url, format='turtle')

# G = rdflib_to_networkx_multidigraph(result)

# Plot Networkx instance of RDF Graph
# pos = nx.spring_layout(G, scale=2)
# edge_labels = nx.get_edge_attributes(G, 'r')
# nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels)
# nx.draw(G, with_labels=True)

#if not in interactive mode for 
# plt.show()


# visualize(g)
