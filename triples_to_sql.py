import os
from sqlalchemy import create_engine, text
from rdflib import Graph, URIRef, RDF, RDFS, OWL, Literal, Namespace, XSD
import json
from sqlalchemy import create_engine
import re
from copy import deepcopy
from pymongo import MongoClient
from datetime import datetime
from bson.decimal128 import Decimal128




class TriplesToSQL:
    def __init__(self) -> None:   
        self.data_types = {'types': [], 'values': []}
        self.reset_graph()
        self.all_property_types = {}
        self.predicate_dict = {}
        self.type_name = {}
        self.domain = {'s': [], 'o': []}
        self.range = {'s': [], 'o': []}
        self.type = {'s': [], 'o': []}
    
    def reset_graph(self):
        self.g = Graph(bind_namespaces="rdflib")
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
        self.g.bind("soma", soma)
        self.g.bind("owl", OWL)
        self.g.bind("rdf", RDF)
        self.g.bind("rdfs", RDFS)
        self.g.bind("xsd", XSD)
        self.g.bind("dul", dul)
        self.g.bind("iolite", iolite)
        self.g.bind("urdf", urdf)
        self.g.bind("srdl2-cap", srdl2_cap)
        self.g.bind("kitchen", kitchen)
        self.g.bind("pr2", pr2)
        self.g.bind("iai-kitchen-knowledge", iai_kitchen_knowledge)
        self.g.bind("knowrob", knowrob)
        self.g.bind("iai-kitchen-objects", iai_kitchen_objects)
        self.g.bind("srdl2-comp", srdl2_comp)
        known_ns = [OWL, RDF, RDFS, XSD, soma, dul, iolite, urdf, srdl2_cap, kitchen, pr2, iai_kitchen_knowledge, knowrob, iai_kitchen_objects, srdl2_comp]
        known_ns_names = ['owl', 'rdf', 'rdfs', 'xsd', 'soma', 'dul', 'iolite', 'urdf', 'srdl2_cap', 'kitchen', 'pr2', 'iai_kitchen_knowledge', 'knowrob', 'iai_kitchen_objects', 'srdl2_comp']
        self.ns = {knsname: kns for knsname, kns in zip(known_ns_names, known_ns)}

    def xsd_2_mysql_type(self, property_name, o):
        for _, _, value in self.g.triples((property_name, RDFS.range, None)):
            property_name_val = property_name.n3(self.g.namespace_manager)
            val = value.n3(self.g.namespace_manager)
            if val not in self.data_types['types']:
                self.data_types['types'].append(val)
                self.data_types['values'].append(o)
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
            elif value == self.ns['soma'].array_double:
                return 'DOUBLE'
            else:
                return 'VARCHAR(2083)'

    def ont_2_py(self, obj, name):
        o = obj
        property_name = URIRef(name)
        # print(property_name.n3(self.g.namespace_manager))
        for _, _, value in self.g.triples((property_name, RDFS.range, None)):
            val = value.n3(self.g.namespace_manager)
            if val not in self.data_types['types']:
                self.data_types['types'].append(val)
                self.data_types['values'].append(o)
            if property_name not in self.all_property_types:
                self.all_property_types[property_name] = value
            if str(XSD) in str(value):
                o = Literal(o, datatype=value)
                v = o.value
            elif value == self.ns['soma'].array_double:
                v = list(map(float, str(o).strip('[]').split(' ')))
            else:
                v = str(o)
            return v
        return o

    def sql_to_graph(self, sqlalchemy_engine):
        engine = sqlalchemy_engine
        # get a connection
        conn = engine.connect()
        curr = conn.execute(text("""SELECT s, p, o, neem_id
        FROM test.triples
        ORDER BY _id;"""))
        
        for v in curr:
            # print(type(v[0]))
            new_v = [0, 0, 0]
            for i in range(3):
                if 'http' in v[i] and '#' in v[i]:
                    ns_name = v[i].split('#')[0].split('/')[-1].split('.owl')[0]
                    ns_iri = v[i].split('#')[0]+'#'
                    if ns_iri not in self.ns.values():
                        self.ns[ns_name] = Namespace(v[i].split('#')[0]+'#')         
                new_v[i] = URIRef(v[i].strip('<>')) if '#' in v[i] else Literal(v[i].strip('<>'))
            self.g.add((new_v[0], new_v[1], new_v[2]))
            # break
        conn.commit()
        conn.close()
        # print(json.dumps(self.ns, indent=4))
        # print(len(self.ns))
    
    def mongo_triples_to_graph(self, collection):
        self.reset_graph()
        py2xsd = {int: XSD.integer, float: XSD.float, str: XSD.string, bool: XSD.boolean, list: self.ns['soma'].array_double,
                  datetime: XSD.dateTime}
        for docs in collection.find():
            v = [docs['s'], docs['p'], docs['o']]
            new_v = [0, 0, 0]
            for i in range(3):
                if not isinstance(v[i], str):
                    if isinstance(v[i], Decimal128):
                        v[i] = float(v[i].to_decimal())
                    new_v[i] = Literal(v[i], datatype=py2xsd[type(v[i])])
                    # if not type(v[i]) == float:
                    #     print('not str', v[i])
                    continue
                if 'http' in v[i] and '#' in v[i]:
                    ns_name = v[i].split('#')[0].split('/')[-1].split('.owl')[0]
                    ns_iri = v[i].split('#')[0]+'#'
                    if ns_iri not in self.ns.values():
                        self.ns[ns_name] = Namespace(v[i].split('#')[0]+'#')         
                new_v[i] = URIRef(v[i].strip('<>')) if '#' in v[i] else Literal(v[i].strip('<>'))
            self.g.add((new_v[0], new_v[1], new_v[2]))
            # break
        # print(json.dumps(self.ns, indent=4))
        # print(len(self.ns))

    def graph_to_dict(self, dump=False, graph=None):
        predicate_dict = {}
        g = self.g if graph is None else graph
        for s, p, o in g:
            p_n3 = p.n3(g.namespace_manager)
            if p_n3 not in predicate_dict:
                predicate_dict[p_n3] = {'s':[], 'o':[]}
            s_n3 = s.n3(g.namespace_manager).strip('<>')
            if "iai-kitchen.owl" in s_n3:
                s_n3 = s_n3.replace("iai-kitchen.owl", "IAI-kitchen.owl")
            if '#' in s_n3 and 'http' in s_n3:
                s_n3 =  URIRef(s_n3).n3(g.namespace_manager)
            s_n3 = s_n3.strip('<>')
            predicate_dict[p_n3]['s'].append(s_n3)
            new_o = self.ont_2_py(o, p)
            if type(new_o) == str:
                if "iai-kitchen.owl" in new_o:
                    new_o = new_o.replace("iai-kitchen.owl", "IAI-kitchen.owl")

                if '#' in new_o and 'http' in new_o:
                    new_o = URIRef(new_o).n3(g.namespace_manager)
                new_o = new_o.strip('<>')
            elif type(new_o) in [URIRef, Literal]:
                new_o = new_o.n3(g.namespace_manager)
                new_o = new_o.strip('<>')
            predicate_dict[p_n3]['o'].append(new_o)

        predicate_dict_cp = deepcopy(predicate_dict)
        self.domain['s'].extend(predicate_dict_cp['rdfs:domain']['s'])
        self.domain['o'].extend(predicate_dict_cp['rdfs:domain']['o'])
        self.range['s'].extend(predicate_dict_cp['rdfs:range']['s'])
        self.range['o'].extend(predicate_dict_cp['rdfs:range']['o'])
        self.type['s'].extend(predicate_dict_cp['rdf:type']['s'])
        self.type['o'].extend(predicate_dict_cp['rdf:type']['o'])
        new_predicate_dict = {}
        for p in predicate_dict_cp:
            d, r = 's', 'o'
            dtype = ''
            if p in self.domain['s']:
                d = self.domain['o'][self.domain['s'].index(p)]
                self.type_name[d] = {}
                d = re.sub(':|-', '_', d)
                d += '_s'
                self.type_name[d] = d
                predicate_dict[p][d] = predicate_dict[p]['s']
                del predicate_dict[p]['s']
            if p in self.range['s']:
                r = self.range['o'][self.range['s'].index(p)]
                if r in self.type['s']:
                    idx = self.type['s'].index(r)
                    dtype = self.type['o'][idx]
                if dtype != 'rdfs:Datatype' and 'xsd' not in r:
                    self.type_name[r] = {}
                    r = re.sub(':|-', '_', r)
                    r += '_o'
                    self.type_name[r] = r
                    predicate_dict[p][r] = predicate_dict[p]['o']
                    del predicate_dict[p]['o']
            new_p = re.sub(':|-', '_', p)
            if new_p != p:
                predicate_dict[new_p] = predicate_dict[p]
                del predicate_dict[p]
            keys = list(predicate_dict[new_p].keys())
            k1, k2 = keys[0], keys[1]
            new_predicate_dict[new_p] = [{k1:predicate_dict[new_p][k1][i], k2:predicate_dict[new_p][k2][i]} for i in range(len(predicate_dict[new_p][k1]))]
        self.predicate_dict.update(predicate_dict)
        if dump:
            json.dump(new_predicate_dict, open('predicate_dict.json', 'w'), indent=4)
        return new_predicate_dict
    
    def find_link_in_graph_dict(self, value, data):
        if value in data['rdf_type']['s']:
            idx = data['rdf_type']['s'].index(value)
            return idx+1, data['rdf_type']['o'][idx]
        return None, None

    def triples_json_filter_func(self, doc):
        iri = doc['@id']
        if '@type' in doc.keys():
            name = [dtype.split('#')[1] for dtype in doc['@type']]
            name = [re.sub("(_:)", "", n) for n in name]
            for n in name:
                if 'NamedIndividual' in n:
                    for n2 in name:
                        if 'NamedIndividual' not in n2\
                            and 'Description' not in n2\
                                and 'List' not in n2:
                            return n2, doc, iri
        return None, doc, iri


if __name__ == "__main__":
    from restructure_triples_and_neems import json_to_sql, dict_to_sql

    # Create TriplesToSQL object
    t2sql = TriplesToSQL()

    # Create a graph from the sql database or from the json file
    create_graph_from_sql = False
    create_graph_from_json = False
    create_graph_from_mongo = True

    # Save the graph to a json file
    save_graph_to_json = False

    # Create a sql database from the graph dictionary or from the json file
    create_sql_from_graph_dict = True
    create_sql_from_graph_json = False

    # Create sqlalchemy engine
    sql_url = os.environ['LOCAL_SQL_URL']
    engine = create_engine(sql_url)

    if create_graph_from_sql:
        # Create a graph from the sql database
        t2sql.sql_to_graph(engine)
    elif create_graph_from_json:
        # Create a graph from the json file
        t2sql.g.parse("test.json", format="json-ld")
    elif create_graph_from_mongo:
        # Create a graph from the mongo database
        # Replace the uri string with your MongoDB deployment's connection string.
        MONGODB_URI = os.environ["LOCAL_MONGODB_URI"]
        # set a 5-second connection timeout
        client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
        db = client.neems
        id = '5fc8ff968f880006aa208e19'
        triples_collection = db.get_collection(id + '_triples')
        t2sql.mongo_triples_to_graph(triples_collection)
    
    if save_graph_to_json:
        # Create a json file from the graph
        t2sql.g.serialize(format='json-ld', encoding='utf-8', destination="test.json")

    if create_sql_from_graph_dict:
        # Create a dictionary from the graph
        predicate_dict = t2sql.graph_to_dict(dump=True)
        dict_to_sql(predicate_dict, engine,find_link_func=t2sql.find_link_in_graph_dict)
        # print(json.dumps(list(zip(data_types['types'],data_types['values'])),sort_keys=True, indent=4))
        # print(json.dumps(all_property_types,sort_keys=True, indent=4))
        # print("number of datatybes = ", len(data_types['types']))

    elif create_sql_from_graph_json:
        # Create a sql database from the json file
        triples_data = json.load(open('test.json'))
        name = "restructred_triples"
        json_to_sql(name, triples_data, engine, filter_doc=None, value_mapping_func=lambda x,n: x)