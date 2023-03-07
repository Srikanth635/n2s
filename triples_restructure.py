import os
from sqlalchemy import create_engine, text
from rdflib import Graph, URIRef, RDF, RDFS, OWL, Literal, Namespace, XSD
import json
from restructure_triples_and_neems import json_to_sql
from sqlalchemy import create_engine
import re


data_types = {'types': [], 'values': []}
all_property_types = {}

def xsd_2_mysql_type(property_name, o):
    for _, _, value in g.triples((property_name, RDFS.range, None)):
        property_name_val = property_name.n3(g.namespace_manager)
        val = value.n3(g.namespace_manager)
        if val not in data_types['types']:
            data_types['types'].append(val)
            data_types['values'].append(o)
        if value == XSD.string:
            return 'VARCHAR(255)'
        elif value == XSD.integer:
            return 'INT'
        elif value == XSD.float:
            return 'FLOAT'
        elif value == XSD.double:
            return 'DOUBLE'
        elif value == XSD.boolean:
            return 'BOOL'
        elif value == XSD.dateTime:
            return 'DATETIME'
        elif value == XSD.date:
            return 'DATE'
        elif value == XSD.time:
            return 'TIME'
        elif value == soma.array_double:
            return 'DOUBLE'
        else:
            return 'VARCHAR(2083)'

def ont_2_py(obj, name):
    o = obj
    property_name = URIRef(name)
    for _, _, value in g.triples((property_name, RDFS.range, None)):
        val = value.n3(g.namespace_manager)
        if val not in data_types['types']:
            data_types['types'].append(val)
            data_types['values'].append(o)
        if property_name not in all_property_types:
            all_property_types[property_name] = value
        if str(XSD) in str(value):
            o = Literal(o, datatype=value)
            v = o.value
        elif value == soma.array_double:
            v = list(map(float, str(o).strip('[]').split(' ')))
        else:
            v = str(o)
        return v
    return o

g = Graph(bind_namespaces="rdflib")
soma = Namespace("http://www.ease-crc.org/ont/SOMA.owl#")
dul = Namespace("http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#")
iolite = Namespace("http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#")
urdf = Namespace("http://knowrob.org/kb/urdf.owl#")
srdl2_cap = Namespace("http://knowrob.org/kb/srdl2-cap.owl#")
srdl2_comp = Namespace("http://knowrob.org/kb/srdl2-comp.owl#")
kitchen = Namespace("http://knowrob.org/kb/IAI-kitchen.owl#")
pr2 = Namespace("http://knowrob.org/kb/PR2.owl#")
iai_kitchen_knowledge = Namespace("http://knowrob.org/kb/iai-kitchen-knowledge.owl#")
knowrob = Namespace("http://knowrob.org/kb/knowrob.owl#")
iai_kitchen_objects = Namespace("http://knowrob.org/kb/iai-kitchen-objects.owl#")
g.bind("soma", soma)
g.bind("owl", OWL)
g.bind("rdf", RDF)
g.bind("rdfs", RDFS)
g.bind("xsd", XSD)
g.bind("dul", dul)
g.bind("iolite", iolite)
g.bind("urdf", urdf)
g.bind("srdl2-cap", srdl2_cap)
g.bind("kitchen", kitchen)
g.bind("pr2", pr2)
g.bind("iai-kitchen-knowledge", iai_kitchen_knowledge)
g.bind("knowrob", knowrob)
g.bind("iai-kitchen-objects", iai_kitchen_objects)
g.bind("srdl2-comp", srdl2_comp)
# Create sqlalchemy engine
sql_url = os.environ['LOCAL_SQL_URL']
engine = create_engine(sql_url)

# get a connection
# conn = engine.connect()
# curr = conn.execute(text("""SELECT s, p, o
# FROM test.triples
# ORDER BY _id;"""))
# known_ns = [OWL, RDF, RDFS, XSD, soma, dul, iolite, urdf, srdl2_cap, kitchen, pr2, iai_kitchen_knowledge, knowrob, iai_kitchen_objects, srdl2_comp]
# known_ns_names = ['owl', 'rdf', 'rdfs', 'xsd', 'soma', 'dul', 'iolite', 'urdf', 'srdl2_cap', 'kitchen', 'pr2', 'iai_kitchen_knowledge', 'knowrob', 'iai_kitchen_objects', 'srdl2_comp']
# triples_ns = {knsname: str(kns) for knsname, kns in zip(known_ns_names, known_ns)}
# for v in curr:
#     # print(type(v[0]))
#     new_v = [0, 0, 0]
#     for i in range(3):
#         if 'http' in v[i] and '#' in v[i]:
#             ns_name = v[i].split('#')[0].split('/')[-1].split('.owl')[0]
#             ns_iri = v[i].split('#')[0]+'#'
#             if ns_iri not in triples_ns.values():
#                 triples_ns[ns_name] = v[i].split('#')[0]+'#'
#         new_v[i] = URIRef(v[i]) if '#' in v[i] else Literal(v[i])
#     g.add((new_v[0], new_v[1], new_v[2]))
#     # break
# conn.commit()
# conn.close()
# print(json.dumps(triples_ns, indent=4))
# print(len(triples_ns))
g.parse("test.json", format="json-ld")

# Get all data types
for s, p, o in g:
    col_type = ont_2_py(o, p)
# print(json.dumps(list(zip(data_types['types'],data_types['values'])),sort_keys=True, indent=4))
print(json.dumps(all_property_types,sort_keys=True, indent=4))
print("number of datatybes = ", len(data_types['types']))
# exit()

# Create a json file from the graph
# g.serialize(format='json-ld', encoding='utf-8', destination="test.json")
def triples_json_filter_func(doc):
    iri = doc['@id']
    if '@type' in doc.keys():
        name = [dtype.split('#')[1] for dtype in doc['@type']]
        name = [re.sub("(_:)", "", n) for n in name]
        for n in name:
            # if 'NamedIndividual' not in n\
            #       and 'Description' not in n\
            #         and 'List' not in n:
            #     return n, doc
            if 'NamedIndividual' in n:
                for n2 in name:
                    if 'NamedIndividual' not in n2\
                          and 'Description' not in n2\
                            and 'List' not in n2:
                        return n2, doc, iri

    return None, doc, iri

# Create a sql database from the json file
triples_data = json.load(open('test.json'))
name = "restructred_triples"
json_to_sql(name, triples_data, engine, filter_doc=triples_json_filter_func, value_mapping_func=ont_2_py)
exit()

# l =Literal('http://knowrob.org/kb/srdl2-comp.owl#PayloadAttribute', datatype=XSD.anyURI)
# a = str(l)
# b = l.value
# print(type(b))
# v = datetime.strptime(str(l.value), '%Y-%m-%dT%H:%M:%S')
# vtype = datetime

tables = {"classes":{'uri': [], 'name': []}}
# get all named individuals in the object position
# for every named individual, get all triples where the subject is the named individual
for named_individual, _, _ in g.triples((None, RDF.type, OWL.NamedIndividual)):
    # print(s)
    # get class of the named individual
    for _, _, rdf_type in g.triples((named_individual, RDF.type, None)):
        if rdf_type != OWL.NamedIndividual:
            class_name = rdf_type.split('#')[1]
            # print("type = ", o1)
            # create a table for the class if it doesn't exist
            if class_name not in  tables.keys():
                tables[class_name] = {'name':[named_individual]}
                tables["classes"]['uri'].append(rdf_type)
                tables["classes"]['name'].append(class_name)
            else:
                tables[class_name]['name'].append(named_individual)

    # get all triples where the subject is the named individual
    for _, class_property, value in g.triples((named_individual, None, None)):
        # create a column for the property if it doesn't exist
        # add the property to the list of columns of the table
        col = class_property.n3(g.namespace_manager)
        value = value.split('#')[1] if '#' in value else value
        if col not in tables[class_name].keys():
            v = ont_2_py(value, class_property)
            print(v, type(v))
            tables[class_name][col] = []
        if value not in tables[class_name][col]:
            tables[class_name][col].append(value)
                
    # print('====================')
# json.dump(tables, open('tables.json', 'w'), sort_keys=True)
# print(json.dumps(tables,sort_keys=True, indent=4))
print(json.dumps(list(zip(data_types['types'],data_types['values'])),sort_keys=True, indent=4))
print("number of datatybes = ", len(data_types['types']))
print("number of classes = ", len(tables.keys()))
# print(json.dumps(tables["IAIOven"],sort_keys=True, indent=4))