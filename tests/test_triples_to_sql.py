import os

from pymongo import MongoClient
from rdflib import RDFS
from sqlalchemy import Engine, create_engine

import neems_to_sql.neems_to_sql as n2sql
from neems_to_sql import TriplesToSQL, SQLCreator
from unittest import TestCase


class TestNeemsToSql(TestCase):
    t2sql: TriplesToSQL
    mongo_db: MongoClient
    path: str
    sql_creator: SQLCreator
    read_engine: Engine
    write_engine: Engine
    neem_id: str

    @classmethod
    def setUpClass(cls):
        # Create TriplesToSQL object
        cls.t2sql = TriplesToSQL()

        # Replace the uri string with your MongoDB deployment's connection string.
        MONGODB_URI = "mongodb://localhost:27017/"
        # set a 5-second connection timeout
        client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
        cls.mongo_db = client.neems
        cls.path = os.path.join(os.path.dirname(__file__), '../neems')
        read_sql_uri = "mysql+pymysql://newuser:password@localhost/test"
        write_sql_uri = "mysql+pymysql://newuser:password@localhost/"
        cls.read_engine = create_engine(read_sql_uri)
        cls.write_engine = create_engine(write_sql_uri)
        n2sql.create_database_if_not_exists_and_use_it(cls.write_engine, 'tests')
        cls.sql_creator = SQLCreator(cls.read_engine, tosql_func=cls.t2sql.get_sql_type)
        cls.neem_id = '5fd0f191f3fc822d8e73d715'

    @classmethod
    def tearDownClass(cls):
        # Delete the database
        n2sql.delete_database_if_exists(cls.write_engine, 'tests')
        cls.read_engine.dispose()
        cls.write_engine.dispose()

    def tearDown(self):
        self.t2sql.reset_graph()

    def test_create_graph_from_mongo(self):
        # Create a graph from the mongo database
        self.create_graph_from_mongo()
        result = self.t2sql.g.query("SELECT * WHERE {\"soma\" ?p " + f"\"{self.t2sql.ns_str['soma']}\"" + "}")
        self.assertTrue(len(result) > 0)
        for row in result:
            self.assertTrue(row.p == RDFS.isDefinedBy)

    def test_convert_graph_to_dict(self):
        # Create a graph from the mongo database and convert it to a dictionary
        self.create_graph_from_mongo()
        predicate_dict = self.t2sql.graph_to_dict(save_path=self.path)
        self.assertTrue(len(predicate_dict) > 0)
        self.assertTrue(os.path.exists(os.path.join(self.path, 'predicate_dict.json')))
        os.remove(os.path.join(self.path, 'predicate_dict.json'))
        self.assertTrue({'s': 'soma', 'o': self.t2sql.ns_str['soma']} in predicate_dict['rdfs_isDefinedBy'])
        self.assertTrue({'s': 'dul:Action_IKMZVXGQ', 'o': 'dul:Action'} in predicate_dict['rdf_type'])

    def test_convert_dict_to_sql(self):
        self.create_graph_from_mongo()
        predicate_dict = self.t2sql.graph_to_dict()
        n2sql.dict_to_sql(predicate_dict, self.sql_creator, neem_id=self.neem_id)
        self.sql_creator.engine = self.write_engine
        self.sql_creator.upload_data_to_sql(drop_tables=True)
        col_vals = n2sql.get_value_from_sql('rdfs_isDefinedBy',
                                            self.write_engine, col_name='o'
                                            , col_value_pairs={'s': 'soma'})
        self.assertTrue(len(col_vals) > 0)
        self.assertTrue(self.t2sql.ns_str['soma'] in col_vals)
        self.assertTrue(col_vals.count(self.t2sql.ns_str['soma']) == 1)

    def create_graph_from_mongo(self):
        triples_collection = self.mongo_db.get_collection(self.neem_id + '_triples')
        self.t2sql.mongo_triples_to_graph(triples_collection)
