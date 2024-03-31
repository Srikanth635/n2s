from pymongo import MongoClient

from neems_to_sql import TriplesToSQL
from unittest import TestCase


class TestNeemsToSql(TestCase):
    t2sql: TriplesToSQL
    mongo_db: MongoClient

    @classmethod
    def setUpClass(cls):
        # Create TriplesToSQL object
        cls.t2sql = TriplesToSQL()

        # Replace the uri string with your MongoDB deployment's connection string.
        MONGODB_URI = "mongodb://localhost:27017/"
        # set a 5-second connection timeout
        client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
        cls.mongo_db = client.neems

    def test_create_graph_from_mongo(self):
        # Create a graph from the mongo database
        id_ = '5fd0f191f3fc822d8e73d715'
        triples_collection = self.mongo_db.get_collection(id_ + '_triples')
        self.t2sql.mongo_triples_to_graph(triples_collection)
        result = self.t2sql.g.query("SELECT * WHERE {?s ?p ?o} LIMIT 10")
        self.assertTrue(len(result) > 0)
