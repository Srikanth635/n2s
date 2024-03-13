from unittest import TestCase
from neems_to_sql import get_constraints, set_logging_level, get_sql_uri
from sqlalchemy import create_engine


class TestGetConstraints(TestCase):
    engine: create_engine

    @classmethod
    def setUpClass(cls):
        sql_uri = get_sql_uri("newuser", "password", "localhost", "test")
        cls.engine = create_engine(sql_uri)
        set_logging_level("DEBUG")

    def test_get_constraints(self):
        constraints = get_constraints(self.engine)
        self.assertTrue(len(constraints) > 0)

