import argparse
import logging
import pickle
import re
from copy import deepcopy
from datetime import datetime
from math import ceil
from time import time

import numpy as np
import yaml
from bson.decimal128 import Decimal128
from bson.objectid import ObjectId
from orderedset import OrderedSet
from pymongo import MongoClient
from pymongo.collection import Collection
from sqlalchemy import Engine, Connection
from sqlalchemy import text
from sqlalchemy.exc import SQLAlchemyError
from tqdm import tqdm
from typing_extensions import Optional, Callable, Tuple, List, Dict, Union, Any

from .logger import CustomLogger
from .triples_to_sql import TriplesToSQL, get_sql_type_from_pyval

LOGGER = CustomLogger.LOGGER
log_level_dict = {'DEBUG': logging.DEBUG, 'INFO': logging.INFO, 'WARNING': logging.WARNING, 'ERROR': logging.ERROR,
                  'CRITICAL': logging.CRITICAL}


def sql_type_to_byte_size(sql_type: str) -> int:
    """Get the byte size of the sql type

    Args:
        sql_type ([str]): [sql type]
    
    Raises:
        ValueError: [if the sql type is not known]

    Returns:
        [int]: [byte size of the sql type]
    """
    sql_type = sql_type.upper()
    if '(' in sql_type:
        new_sql_type = sql_type.split('(')[0]
        if new_sql_type in ['VARCHAR', 'CHAR']:
            return int(sql_type.split('(')[1].split(')')[0])
        sql_type = new_sql_type
    if sql_type == 'TEXT':
        return 65536
    if sql_type == 'MEDIUMTEXT':
        return 16777216
    if sql_type == 'LONGTEXT':
        return 4294967296
    numeric_type_size = {'TINYINT': 1,
                         'SMALLINT': 2,
                         'MEDIUMINT': 3,
                         'INT': 4,
                         'BIGINT': 8,
                         'FLOAT': 4,
                         'DOUBLE': 8,
                         'DECIMAL': 8,
                         'BIT': 1,
                         'BOOLEAN': 1,
                         'SERIAL': 4}
    if sql_type in numeric_type_size:
        return numeric_type_size[sql_type]
    raise ValueError(f"UNKOWN SQL TYPE {sql_type}")


# mongo_to_python_conversions
def mon2py(val: object, _: Optional[str] = None):
    """Convert the value from mongo to python type

    Args:
        val ([object]): [value from mongo database to be converted to python type]
        _ ([str], optional): [For matching the template of conversion functions]. Defaults to None.

    Returns:
        [python_type]: [the converted value]
    """
    if isinstance(val, Decimal128):
        return float(val.to_decimal())
    elif isinstance(val, ObjectId):
        return str(val)
    elif isinstance(val, datetime):
        return val.timestamp() + 60 * 60
    else:
        return val


def py2sql(val: object,
           table_name: str,
           column_name: str,
           _id: Optional[bool] = False,
           type2sql_func: Optional[Callable[[object, str], Tuple[str, int]]] = None) \
        -> Tuple[Optional[str], Optional[int]]:
    """Convert the value from python to sql type
    Args:
        val ([object]): [value from python to be converted to sql type]
        table_name ([str]): [name of the table]
        column_name ([str]): [name of the column]
        _id (bool, optional): [whether the column is an id column]. Defaults to False.
        type2sql_func ([callable], optional): [user function to convert the python type to sql type]. Defaults to None.
    
    Returns:
        [str]: [sql type]
        [int]: [byte size of the type]
    """
    val_type = type(val)
    if val_type is None:
        return None, None
    elif _id:
        return 'VARCHAR(24)', None
    elif type2sql_func is not None:
        return type2sql_func(val, table_name + '.' + column_name)
    else:
        raise ValueError(f"UNKOWN DATA TYPE {val_type}")


# noinspection PyBroadException
def get_value_from_sql(table_name: str, engine: Engine, col_name: Optional[str] = 'ID',
                       col_value_pairs: Optional[dict] = None) -> list:
    """Retrieve a list of values from a table column .

    Args:
        table_name (str): [The name of the table to retrieve the values from.]
        engine (Engine): [The sqlalchemy engine to use to connect to the database.]
        col_name (str, optional): [The name of the column to retrieve the values from.]. Defaults to 'ID'.
        col_value_pairs (dict, optional): [each pair is a column name and a value to search for in that column.].
         Defaults to None.

    Returns:
        [list]: [list of values that match the search criteria.]

    """
    if col_value_pairs is None:
        sql_cmd = f"SELECT {col_name} FROM {table_name};"
    else:
        sql_cmd = f"SELECT {col_name} FROM {table_name} WHERE "
        for i, (k, v) in enumerate(col_value_pairs.items()):
            sql_cmd += f"{k} = '{v}'"
            if i != len(col_value_pairs) - 1:
                sql_cmd += ' AND '
            else:
                sql_cmd += ';'
    with engine.connect() as conn:
        try:
            result = conn.execute(text(sql_cmd))
            result = result.fetchall()
            result = [x[0] for x in result]
        except:
            result = []
    return result


def get_sql_meta_data(engine: Engine) -> Tuple[dict, dict, dict]:
    """Get the names of the tables and columns from the database

    Args:
        engine (Engine): [The database engine]

    Returns:
        [dict] : [The names of the tables and the columns in each table that are currently in the database]
        [dict] : [Column data types]
        [dict] : [Column data byte sizes]
    """
    stmt = text(
        "SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = N'test'")
    meta_data = {}
    data_types = {}
    data_bytes = {}
    with engine.connect() as conn:
        result = conn.execute(stmt)
        for row in result:
            if row[0] not in meta_data:
                meta_data[row[0]] = []
            if row[1] != 'ID':
                meta_data[row[0]].append(row[1])
                data_types[row[0]] = {row[1]: row[2]}
                data_bytes[row[0]] = {row[1]: sql_type_to_byte_size(row[2])}
        if result.rowcount == 0:
            LOGGER.debug("No data found")
        else:
            LOGGER.debug(f"{result.rowcount} row(s) found")
        return meta_data, data_types, data_bytes


class SQLCreator:
    def __init__(self, engine: Engine,
                 value_mapping_func: Optional[Callable[[object, Optional[str]], object]] = None,
                 allowed_missing_percentage: Optional[int] = 5,
                 tosql_func: Optional[Callable[[object, str], Tuple[str, int]]] = None,
                 allow_increasing_size: Optional[bool] = False,
                 allow_text_indexing: Optional[bool] = False) -> None:
        """A class to create SQL tables (from python data structures) and insert data into them

        Args:
            engine (Engine): [sqlalchemy engine]
            value_mapping_func ([callable], optional): [function to convert the value from mongo to python type].
             Defaults to None.
            allowed_missing_percentage (int, optional): [percentage of missing values allowed in a column].
             Defaults to 5.
            tosql_func ([callable], optional): [function to convert the value from python to sql type].
             Defaults to None.
            allow_increasing_size (bool, optional): [whether to allow increasing the size of the column].
             Defaults to False.
            allow_text_indexing (bool, optional): [whether to allow indexing of text columns]. Defaults to False.
        
        Example:
            >> data = {'ID': [1, 2, 3], 'name': ['a', 'b', 'c'], 'age': [10, 20, 30]}
            >> engine = create_engine('mysql+pymysql://username:password@localhost/test?charset=utf8mb4')
            >> sql_creator = SQLCreator(engine, value_mapping_func=mon2py, tosql_func=py2sql)
            >> sql_creator.find_relationships('data', data)
            >> sql_creator.convert_to_sql('data', data)
            >> sql_creator.upload_data_to_sql()
        """
        self.engine = engine
        self.not_always_there = []
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
        self.meta_data = {}
        self.all_obj_keys = {}
        self.obj_key_count = {}
        self.one_item_lists = []
        self.not_one_item_lists = []
        self.name_type = {}
        self.value_mapping_func = value_mapping_func if value_mapping_func is not None else mon2py
        self.linked_table_names = OrderedSet()
        self.allowed_missing_percentage = allowed_missing_percentage
        self.tosql_func = tosql_func
        self.data_bytes = {}
        self.data_types = {}
        self.sql_meta_data, self.original_data_types, self.original_data_bytes = get_sql_meta_data(self.engine)
        self.allow_increasing_size = allow_increasing_size
        self.allow_text_indexing = allow_text_indexing

    def reset_data(self) -> None:
        """Reset all data to empty .
        """
        self.sql_table_creation_cmds = OrderedSet()
        self.data_to_insert = {}
        self.sql_meta_data, self.original_data_types, self.original_data_bytes = get_sql_meta_data(self.engine)

    def merge_with(self, sql_creator: 'SQLCreator') -> None:
        """Merge another SQL creator .

        Args:
            sql_creator ([SQLCreator]): [sql_creator to be merged with]
        """
        self.sql_table_creation_cmds.update(sql_creator.sql_table_creation_cmds)
        self.data_to_insert.update(sql_creator.data_to_insert)
        self.data_bytes.update(sql_creator.data_bytes)
        self.data_types.update(sql_creator.data_types)
        self.meta_data.update(sql_creator.meta_data)

    def insert_column_and_value(self, table_name: str, column_name: str, v: object, null_prev_rows=True) -> None:
        """Insert a column and value into the data_to_insert dictionary
        
        Args:
            table_name ([str]): [name of the table]
            column_name ([str]): [name of the column]
            v ([python_type]): [value to be inserted]
            null_prev_rows (bool, optional): [whether to insert NULL values for previous rows]. Defaults to True.
        """
        _id = True if column_name in ['_id', 'neem_id'] else False
        data_type, byte_sz = py2sql(v, _id=_id, type2sql_func=self.tosql_func, table_name=table_name,
                                    column_name=column_name)
        data_type = str(data_type)
        # Insertion
        key = table_name
        v = 'NULL' if v is None else v
        v = -1 if v == float('inf') else v
        if column_name == 'id':
            column_name = '_id'
        if column_name not in self.data_to_insert[key].keys():
            null, unique = True, False
            if data_type is not None:
                if _id:
                    null = False
                    if column_name == '_id' and key == 'neems':
                        unique = True
            self.add_column(key, column_name, data_type, ISNULL=null, ISUNIQUE=unique)
            if key not in self.data_types.keys():
                self.data_types[key] = {}
            self.data_types[key][column_name] = data_type
            if null_prev_rows:
                # The NULL values here are for previous rows that did not have a value for this column
                n_rows = len(self.data_to_insert[key]['ID']) - 1
                self.data_to_insert[key][column_name] = ['NULL'] * n_rows + [v]
            else:
                self.data_to_insert[key][column_name] = [v]
            if key not in self.data_bytes.keys():
                self.data_bytes[key] = {}
            self.data_bytes[key][column_name] = byte_sz
        else:
            self.data_to_insert[key][column_name].append(v)
            if byte_sz is not None:
                if self.data_bytes[key][column_name] is None:
                    self.data_bytes[key][column_name] = byte_sz
                    self.data_types[key][column_name] = data_type
                    self.sql_table_creation_cmds.add(f"ALTER TABLE {key} MODIFY COLUMN {column_name} {data_type};")
                elif byte_sz > self.data_bytes[key][column_name]:
                    if key in self.original_data_bytes:
                        if column_name in self.original_data_bytes[key]:
                            if byte_sz > self.original_data_bytes[key][column_name]:
                                if not self.allow_increasing_size:
                                    LOGGER.error(
                                        f"{key}.{column_name} has increased size:"
                                        f" {self.original_data_bytes[key][column_name]} and {byte_sz}\
                                                and allow_increasing_size argument is False")
                                    raise ValueError()
                                else:
                                    LOGGER.warning(
                                        f"{key}.{column_name} has increased size:"
                                        f" {self.original_data_bytes[key][column_name]} and {byte_sz}")
                    self.data_bytes[key][column_name] = byte_sz
                    self.data_types[key][column_name] = data_type
                    self.sql_table_creation_cmds.add(f"ALTER TABLE {key} MODIFY COLUMN {column_name} {data_type};")

    def find_relationships(self, key: str, obj: dict or list, parent_key: Optional[str] = None) -> None:
        """Find relationships between tables and columns,
          some columns are not always present in the data, so they are not always present in the table,
          so we need to create a new table for them. Also some lists contain only one item,
          so we can remove the list and put the item in the table.

        Args:
            key ([str]): [name of the table]
            obj ([dict]): [data to be inserted]
            parent_key ([str], optional): [name of the parent object]. Defaults to None.
        """
        if '#' in key:
            key = key.split('#')[1]
        if isinstance(obj, dict):
            obj_k = list(map(lambda x: x.split('#')[1] if '#' in x else x, obj.keys()))
            if key in self.all_obj_keys.keys():
                for k, v in obj.items():
                    if '#' in k:
                        k = k.split('#')[1]
                    if k not in self.all_obj_keys[key] and k not in self.sql_meta_data.get(key, []):
                        self.not_always_there.append(key + '.' + k)
                for k, v in self.all_obj_keys[key].items():
                    if k not in obj_k and k not in self.sql_meta_data.get(key, []):
                        self.not_always_there.append(key + '.' + k)
            else:
                self.all_obj_keys[key] = {}
                self.obj_key_count[key] = {'key_count': 0}

            self.obj_key_count[key]['key_count'] += 1
            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                self.obj_key_count[key][k] = self.obj_key_count[key].get(k, 0) + 1
                if isinstance(v, list):
                    if len(v) == 1:
                        if (key + '.' + k not in self.one_item_lists and key + '.' + k not in self.not_one_item_lists) \
                                or k in self.sql_meta_data.get(key, []):
                            self.one_item_lists.append(key + '.' + k)
                    else:
                        if key + '.' + k not in self.not_one_item_lists and k not in self.sql_meta_data.get(key, []):
                            self.not_one_item_lists.append(key + '.' + k)
                        if key + '.' + k in self.one_item_lists and k not in self.sql_meta_data.get(key, []):
                            self.one_item_lists.remove(key + '.' + k)

            for k, v in obj.items():
                if '#' in k:
                    k = k.split('#')[1]
                if type(v) in [dict, list]:
                    self.find_relationships(k, v, key)
                self.all_obj_keys[key][k] = {}
        elif np.iterable(obj) and not isinstance(obj, str):
            if parent_key is not None:
                table_name = parent_key + '_' + key
            else:
                table_name = key
            for v in obj:
                if isinstance(v, dict):
                    if len(v) == 1:
                        if (table_name not in self.one_item_lists and table_name not in self.not_one_item_lists) \
                                or table_name in self.sql_meta_data:
                            self.one_item_lists.append(table_name)
                    else:
                        if table_name not in self.not_one_item_lists and table_name not in self.sql_meta_data:
                            self.not_one_item_lists.append(table_name)
                        if table_name in self.one_item_lists and table_name not in self.sql_meta_data:
                            self.one_item_lists.remove(table_name)
                self.find_relationships(key, v, parent_key)
        else:
            self.all_obj_keys[key] = []

    def filter_null_tables(self) -> None:
        """Filter all null tables in the database, if the number of null values in a column is greater than
            the allowed_missing_percentage, then the column is removed from the table,
            and a new table is created for it.
        """
        for key, all_count in self.obj_key_count.items():
            total_count = all_count['key_count']
            for k, count in all_count.items():
                if k == 'key_count':
                    continue
                if k not in self.sql_meta_data.get(key, []):
                    if ((1 - count / total_count) * 100) > self.allowed_missing_percentage:
                        self.not_always_there.append(key + '.' + k)

    def convert_to_sql(self, key: str, obj: Any, parent_key: Optional[str] = None,
                       key_iri: Optional[str] = '', parent_key_iri: Optional[str] = '',
                       parent_table_name: Optional[str] = '',
                       parent_list: Optional[bool] = False) -> Tuple[object, object, bool, Optional[int]]:
        """Convert a nested dictionary containing dictionaries and lists into a SQL table,
            by recursively traversing the dictionary and creating a table for each object,
            and a column for each key in the object, and storing the data in a dictionary made 
            of upper level keys as table names and lower level keys as column names.

        Args:
            key ([str]): [object/table name]
            obj ([dict|list]): [data to be inserted]
            parent_key ([str], optional): [parent object name]. Defaults to None.
            key_iri (str, optional): [ontology iri of object]. Defaults to ''.
            parent_key_iri (str, optional): [ontology iri of parent object]. Defaults to ''.
            parent_table_name (str, optional): [the name of the parent table which is made from parent object].
             Defaults to ''.
            parent_list (bool, optional): [whether the parent object was a list or not]. Defaults to False.

        Returns:
            [object]: [The provided object]
            [object]: [the type of the object]
            [bool]: [whether object is iterable or not]
            [int]: [the ID of the object in the sql table]
        """
        # This is the ID of the object/row in the sql table.
        ID = None

        # This is to preserve the iri of ontology defined terms.
        orig_key = key
        iri = ''
        if '#' in orig_key:
            key = orig_key.split('#')[1]
            iri = orig_key.split('#')[0] + '#'
        iri = key_iri if iri == '' else iri
        iri = parent_key_iri if iri == '' else iri

        # This is for making sure that this string object is not actually and ontology defined array.
        # if it is an ontology defined array, then a mapping is performed on the string to convert it to a list.
        mapped_already = False
        if (parent_key is not None and isinstance(obj, str) and parent_key_iri != ''
                and parent_key_iri is not None and '_' not in parent_key):
            if ' ' in obj or ',' in obj:
                obj = self.value_mapping_func(obj, parent_key_iri + parent_key)
                mapped_already = True

        if isinstance(obj, dict):
            table_name = key if parent_key is None else parent_key + '_' + key

            id_col_string = f"CREATE TABLE IF NOT EXISTS {table_name} (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);"
            self.sql_table_creation_cmds.add(id_col_string)

            # Make object keys that are not always there into lists (thus making them many-to-many relationships)
            # Also, map one item lists into just the item.
            obj_cp = deepcopy(obj)
            for k, v in obj_cp.items():
                orig_k = k
                if '#' in k:
                    k = k.split('#')[1]
                if not isinstance(v, list):
                    if key + '.' + k in self.not_always_there:
                        obj[orig_k] = [v]
                else:
                    if key + '.' + k in self.one_item_lists and key + '.' + k not in self.not_always_there:
                        obj[orig_k] = v[0]
                        if not isinstance(v[0], dict):
                            continue
                        if key + '_' + k not in self.one_item_lists:
                            continue
                        # This is a one item dict, so we can just map it to the value.
                        for k2, v2 in v[0].items():
                            if k2 in ['@value', '@id']:
                                obj[orig_k] = v2

            # Insertion                        
            # This checks if all the keys (i.e. columns) where defined before, and have values already.
            all_keys_exist = False
            latest_id = 0
            if table_name in self.sql_meta_data:
                latest_id = self.get_max_id_from_sql(table_name)
            if parent_list:
                if table_name in self.sql_meta_data:
                    res = get_value_from_sql(table_name, self.engine, col_value_pairs=obj)
                    if len(res) != 0:
                        ID = res[-1]
                        return obj, type(obj), np.iterable(obj) and not isinstance(obj, str), ID
                    else:
                        latest_id = self.get_max_id_from_sql(table_name)
                if table_name in self.data_to_insert.keys():
                    if isinstance(self.data_to_insert[table_name], dict):
                        all_keys_exist = all([k in self.data_to_insert[table_name].keys() for k in obj.keys()])
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                ID = 1 + latest_id

            # Now that the keys exist, this would check if the values also exist, if it does then skip it,
            # and use old one ID.
            # This is to get all values of all columns and put them together to for a complete row in the table
            # key is table name (here it is the dict key),
            #  and the keys and values of that dict are the column_names and their respective values
            # For example: self.data_to_insert['neems']['ID'] = [id1, id2, id3], where 'neems' is the table name
            # 'ID' is the column_name, and 'id1' to 'id3' are 3 values for 3 different rows in the 'ID' column.
            start = time()
            if all_keys_exist and parent_list:
                rows = zip(*tuple([self.data_to_insert[table_name][k] for k in obj.keys()]))
                rows_list = list(rows)
                row = tuple(filter(mon2py, obj.values()))
                if np.iterable(row):
                    row = tuple(row)
                all_values_exist = row in rows_list
                if all_values_exist:
                    ID = rows_list.index(row) + 1 + latest_id
                    return obj, type(obj), np.iterable(obj) and not isinstance(obj, str), ID
                else:
                    ID = len(rows_list) + 1 + latest_id
                LOGGER.debug("Time to check if all values exist: ", time() - start)
            elif ID is None:
                ID = len(self.data_to_insert[table_name]['ID']) + 1 + latest_id

            # Add new ID for the new entry.
            self.data_to_insert[table_name]['ID'].append('NULL')

            # Go through all columns, create them if new, and create foreign keys to nested tables/dicts
            # Finally insert values.
            for k, v in obj.items():
                orig_k = k
                k_iri = ''
                if '#' in k:
                    k = orig_k.split('#')[1]
                    k_iri = orig_k.split('#')[0] + '#'

                v, v_type, v_iterable, v_id = self.convert_to_sql(k, v, parent_key=key, key_iri=k_iri,
                                                                  parent_key_iri=iri, parent_table_name=table_name)

                if v_iterable:
                    k_table_name = key + '_' + k
                    if v_type == dict:
                        # if key+'.'+k in self.one_item_lists and key+'.'+k not in self.not_always_there:
                        if key + '.' + k not in self.not_always_there:
                            self.add_foreign_key_column(parent_table_name=k_table_name, table_name=table_name,
                                                        col_name=k)
                            if f'{k}' not in self.data_to_insert[table_name]:
                                self.data_to_insert[table_name][f'{k}'] = [v_id]
                            else:
                                self.data_to_insert[table_name][f'{k}'].append(v_id)
                        else:
                            self.add_foreign_key(parent_table_name=table_name, table_name=k_table_name)
                else:
                    # Values are inserted here for non nested columns (i.e. non iterable columns except for str)
                    assert isinstance(v, (str, int, float, bool, type(None), datetime))
                    self.insert_column_and_value(table_name, k, v)

            max_len = max([len(v) for k, v in self.data_to_insert[table_name].items()])
            for k, v in self.data_to_insert[table_name].items():
                if len(v) < max_len:
                    self.data_to_insert[table_name][k].extend(['NULL'] * int(max_len - len(v)))

        elif np.iterable(obj) and not isinstance(obj, str):
            # Creation
            if parent_key is not None:
                table_name = parent_key + '_' + key + '_index'
            else:
                table_name = key + '_index'
            id_col_string = f"CREATE TABLE IF NOT EXISTS {table_name} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY"
            if parent_key is not None:
                id_col_string += f",{parent_key}_ID INT NULL);"
            else:
                id_col_string += f");"
            self.sql_table_creation_cmds.add(id_col_string)

            if parent_key is not None:
                assert parent_table_name is not None
                self.add_foreign_key(parent_table_name=parent_table_name, table_name=table_name,
                                     col_name=parent_key + '_ID')

            # element position index column
            self.add_column(table_name, 'list_index', 'INT', ISNULL=True)

            # Insertion
            if table_name not in self.data_to_insert.keys():
                self.data_to_insert[table_name] = {}
                self.data_to_insert[table_name]['ID'] = []
                if parent_key is not None:
                    self.data_to_insert[table_name][parent_key + '_ID'] = []
                self.data_to_insert[table_name]['list_index'] = []
            parent_id = None
            if parent_key is not None:
                parent_id = len(self.data_to_insert[parent_table_name]['ID'])
            i = 1

            for v in obj:
                # Insertion
                if parent_key is not None:
                    self.data_to_insert[table_name][parent_key + '_ID'].append(parent_id)
                self.data_to_insert[table_name]['ID'].append('NULL')
                self.data_to_insert[table_name]['list_index'].append(i)
                ID = i
                if isinstance(v, list):
                    v = {f'i_{v_i + 1}': v[v_i] for v_i in range(len(v))}
                # if type(v) == str:
                #     v = {'value':v} # This makes strings be a many to many relationship.

                if parent_key is not None:
                    k_table_name = parent_key + '_' + key
                else:
                    k_table_name = key

                if np.iterable(v) and not isinstance(v, str):
                    v, v_type, v_iterable, v_id = self.convert_to_sql(key, v,
                                                                      parent_key=parent_key, parent_key_iri=iri,
                                                                      parent_table_name=table_name, parent_list=True)
                else:
                    v_iterable = False
                    v_id = None

                # This means we are in the meta file, which we know the structure of.
                if v_iterable:
                    if v_id is None:
                        raise ValueError("v_id is None, but it should not be.")

                    # Instance Table Reference Column
                    col_name = f"{k_table_name}_ID"
                    self.add_foreign_key_column(parent_table_name=k_table_name, table_name=table_name,
                                                col_name=col_name)

                    # Insertion
                    if col_name not in self.data_to_insert[table_name].keys():
                        self.data_to_insert[table_name][col_name] = [v_id]
                    else:
                        self.data_to_insert[table_name][col_name].append(v_id)

                else:
                    # Insertion
                    self.insert_column_and_value(table_name, f'{key}_values', v)

                i += 1
        else:
            if not mapped_already:
                parent_key_iri = "" if parent_key_iri is None else parent_key_iri
                parent_key = "" if parent_key is None else parent_key
                obj = self.value_mapping_func(obj, parent_key_iri + parent_key)
        return obj, type(obj), np.iterable(obj) and not isinstance(obj, str), ID

    def link_column_to_exiting_table(self, table_name: str, col_name: str, type_name: str, indicies: list) -> None:
        """Link a column to an existing table .

        Args:
            table_name ([str]): [The name of the table where the column exists.]
            col_name ([str]): [The name of the column to link.]
            type_name ([str]): [The name of the table to link to.]
            indicies ([list]): [A list of indicies that correspond to the table to link to.]
        """
        if np.iterable(indicies[0]):
            for i, j in indicies:
                self.data_to_insert[table_name][col_name][i] = j
        else:
            self.data_to_insert[table_name][col_name] = indicies
        self.sql_table_creation_cmds.add(f"ALTER TABLE {table_name} MODIFY COLUMN {col_name} INT;")
        self.add_foreign_key(parent_table_name=type_name, table_name=table_name, col_name=col_name)

    def add_foreign_key_column(self, parent_table_name: str, table_name: str,
                               col_name: str, parent_col_name='ID') -> None:
        """Add a column to the table and make it a foreign key to another column in another table.

        Args:
            parent_table_name (str): [the name of the table to link to]
            table_name (str): [the name of the table to add the column to]
            col_name (str): [the name of the column to add]
            parent_col_name (str, optional): [the name of the column to link to in the parent table]. Defaults to 'ID'.
        """
        self.add_column(table_name, col_name, 'INT')
        self.add_foreign_key(parent_table_name, table_name, col_name, parent_col_name)

    def add_foreign_key(self, parent_table_name: str, table_name: str, col_name: Optional[str] = 'ID',
                        parent_col_name: Optional[str] = 'ID') -> None:
        """Add a foreign key to a column in a table.

        Args:
            parent_table_name (str): [the name of the table to link to]
            table_name (str): [the name of the table to add the column to]
            col_name (str, optional): [the name of the column to add]. Defaults to 'ID'.
            parent_col_name (str, optional): [the name of the column to link to in the parent table]. Defaults to 'ID'.
        """
        col_string = (f"ALTER TABLE {table_name} ADD FOREIGN KEY IF NOT EXISTS ({col_name})"
                      f" REFERENCES {parent_table_name}({parent_col_name})")
        self.sql_table_creation_cmds.add(col_string)

    def add_column(self, table_name: str, col_name: str, col_type: str,
                   ISNULL: Optional[bool] = True,
                   KEY: Optional[str] = '',
                   ISUNIQUE: Optional[bool] = False,
                   DEFAULT: Optional[int or float or str or datetime] = None,
                   AUTO_INCREMENT: Optional[bool] = False) -> None:
        """Add a column to a table .

        Args:
            table_name ([str]): [The name of the table to add the column to.]
            col_name ([str]): [The name of the column to add.]
            col_type ([str]): [The sql data type of the column to add.]
            ISNULL (bool, optional): [Whether the column values can be NULL or not]. Defaults to True.
            KEY (str, optional): [One of [PRIMARY KEY, FOREIGN KEY]]. Defaults to ''.
            ISUNIQUE (bool, optional): [Whether the column values should be unique (i.e. no dublicate values exist)].
             Defaults to False.
            DEFAULT ([int or float or str or datetime], optional): [The default value for the column element if no
             value was provided]. Defaults to None.
            AUTO_INCREMENT (bool, optional): [Whether this column values are automatically incremented or not].
             Defaults to False.
        """
        NULL = ' NOT NULL' if not ISNULL else ' NULL'
        UNIQUE = ' UNIQUE' if ISUNIQUE else ''
        AUTOINCREMENT = ' AUTO_INCREMENT' if AUTO_INCREMENT else ''
        if KEY != '':
            KEY = f' {KEY}'
        col_string = (f"ALTER TABLE {table_name} ADD COLUMN IF NOT EXISTS {col_name} {col_type}{NULL}{KEY}"
                      f"{AUTOINCREMENT}{UNIQUE}")
        if DEFAULT is not None:
            col_string += f" DEFAULT {DEFAULT}"
        col_string += ';'
        self.sql_table_creation_cmds.add(col_string)

    def create_index(self, table_name: str, column_name: str, idx_name: Optional[str] = None) -> None:
        """ Create an index on a column in a table.

        Args:
            table_name (str): [The name of the table to add the index to.]
            column_name (str): [The name of the column to add the index to.]
            idx_name (str, optional): [The name of the index to add]. Defaults to None.
        """
        if idx_name is None:
            idx_name = f"{table_name}_{column_name}_idx"
        full_text = ""
        if 'TEXT' in self.data_types[table_name][column_name] or 'BLOB' in self.data_types[table_name][column_name]:
            if self.allow_text_indexing:
                full_text = "FULLTEXT "
            else:
                LOGGER.warning(
                    f"Indexing a text column is not recommended, so it is skipped. Column: {column_name} in table:"
                    f" {table_name}, if you want to index text columns, add the '--allow_text_indexing' or"
                    f" '-ati' argument.")
                return
        self.sql_table_creation_cmds.add(
            f"CREATE {full_text}INDEX IF NOT EXISTS {idx_name} ON {table_name} ({column_name});")

    # noinspection PyBroadException
    def get_max_id_from_sql(self, table_name: str, col_name: Optional[str] = 'ID') -> int:
        """Retrieve the maximum id from a table .

        Args:
            table_name (str): [The name of the table to retrieve the ids from.]
            col_name (str, optional): [The name of the column to retrieve the maximum id from]. Defaults to 'ID'.

        Returns:
            [int]: [the maximum id in the table, or 0 if the table is empty.]
        """
        sql_cmd = f"SELECT MAX({col_name}) FROM {table_name};"
        with self.engine.connect() as conn:
            try:
                result = conn.execute(text(sql_cmd))
                result = result.fetchall()
                result = [x[0] for x in result]
                if len(result) == 0:
                    result = 0
                else:
                    result = result[0] if result[0] is not None else 0
            except:
                result = 0
        return result

    def link_column_to_new_table(self, parent_table_name: str, type_name: str, instance_table_indicies: list,
                                 original_table_indicies: list) -> str:
        """Link a column to a new table.

        Args:
            parent_table_name (str): [the name of one of the tables to link to]
            type_name (str): [the name of the other table to link to]
            instance_table_indicies (list): [the indicies of the instances in the parent table]
            original_table_indicies (list): [the indicies of the original instances in the type table]

        Returns:
            [str]: [the name of the new table.]
        """
        # Creation
        new_table_name = parent_table_name + '_' + type_name
        table_string = f"CREATE TABLE IF NOT EXISTS {new_table_name} (ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY);"
        self.sql_table_creation_cmds.add(table_string)

        # Instance Table Reference Column
        self.add_foreign_key_column(parent_table_name, new_table_name, parent_table_name + '_ID')

        # Original Table Reference Column
        self.add_foreign_key_column(type_name, new_table_name, type_name + '_ID')

        # Insertion
        self.data_to_insert[new_table_name] = {}
        self.data_to_insert[new_table_name]['ID'] = ['NULL'] * len(instance_table_indicies)
        self.data_to_insert[new_table_name][parent_table_name + '_ID'] = instance_table_indicies
        self.data_to_insert[new_table_name][type_name + '_ID'] = original_table_indicies
        return new_table_name

    def reference_to_existing_table(self) -> None:
        """Reference to existing table, this is used to link a column to a table that already exists and 
        have the values of the column be the ids of the instances in the other table.
        """
        data_to_insert_cp = deepcopy(self.data_to_insert)
        for table_name, cols in data_to_insert_cp.items():
            for col_name, col_values in cols.items():
                if len(col_values) == 0:
                    continue
                v = col_values[0]
                if not isinstance(v, str):
                    continue
                if '#' not in v:
                    continue
                first_type_name = None
                multi_type = False
                all_type_names = {}
                type_name = None
                for c_i, v in enumerate(col_values):
                    if v not in self.name_type:  # Not a Named Individual
                        multi_type = True
                        continue
                    type_name = self.name_type[v]
                    if type_name not in self.data_to_insert:  # No table for this type
                        raise ValueError(f"Table {type_name} does not exist.")
                    if type_name == table_name:  # Self reference
                        multi_type = True
                        continue
                    if c_i == 0:
                        first_type_name = type_name
                    elif first_type_name != type_name:
                        multi_type = True
                    if type_name not in all_type_names.keys():
                        all_type_names[type_name] = {'instance_table_indicies': [], 'original_table_indicies': []}
                    all_type_names[type_name]['instance_table_indicies'].append(c_i + 1)
                    _id = self.data_to_insert[type_name]['@id'].index(v) + 1
                    all_type_names[type_name]['original_table_indicies'].append(_id)

                # if self_reference or not named_individual:
                #     continue                     
                if not multi_type and type_name is not None:
                    self.link_column_to_exiting_table(table_name, col_name, type_name,
                                                      all_type_names[type_name]['original_table_indicies'])
                else:
                    for type_name, indicies in all_type_names.items():
                        self.link_column_to_new_table(table_name, type_name,
                                                      indicies['instance_table_indicies'],
                                                      indicies['original_table_indicies'])

    def get_insert_rows_commands(self, max_rows_per_cmd: Optional[int] = 100000) -> list:
        """Get the SQL commands to insert, by restructuring the data_to_insert dictionary,
        to be a list of commands, each command containing a maximum of max_rows_per_cmd table rows to insert.

        Args:
            max_rows_per_cmd (int, optional): [description]. Defaults to 100000.

        Returns:
            [list]: [the sql commands]
        """
        sql_insert_commands = []
        assert isinstance(max_rows_per_cmd, int)
        for key, rows_dict in self.data_to_insert.items():
            cols = tuple(rows_dict.keys())
            cols_str = re.sub("(')", "", str(cols))
            rows_list = list(zip(*tuple(rows_dict.values())))
            for i in range(0, len(rows_list), max_rows_per_cmd):
                all_rows_str = str(rows_list[i:i + max_rows_per_cmd]).strip('[]')
                all_rows_str = re.sub("('NULL')", "NULL", all_rows_str)
                all_rows_str = re.sub("(,\))", ")", all_rows_str)
                all_rows_str = re.sub("(:)", "\:", all_rows_str)
                cols_str = re.sub("(,\))", ")", cols_str)

                sql_insert_commands.append(f"INSERT INTO {key} {cols_str} VALUES {all_rows_str};")
        return sql_insert_commands

    def upload_data_to_sql(self, drop_tables: Optional[bool] = True) -> Tuple[int, float]:
        """Upload the data to the database, this will create the tables and insert the data.
        
        Args:
            drop_tables (bool, optional): [If True, will drop the tables before creating them]. Defaults to True.

        Returns:
            [int]: [data size in number of sql commands]
            [float]: [time taken in number of seconds]
        """

        # Create a connection
        conn = self.engine.connect()

        # Get the insertion cmds
        sql_insert_cmds = self.get_insert_rows_commands()

        if drop_tables:
            self._drop_tables(self.data_to_insert, conn)

        # Create tables
        LOGGER.info(self.sql_table_creation_cmds)
        pbar = tqdm(total=len(self.sql_table_creation_cmds), desc="Executing Schema Creation Commands",
                    colour='#FFA500')
        self._execute_cmds(self.sql_table_creation_cmds, conn, pbar=pbar)
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()

        # Insert data
        LOGGER.info(sql_insert_cmds)
        pbar = tqdm(total=len(sql_insert_cmds), desc="Executing Insertion Commands", colour='#FFA500')
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        self._execute_cmds(sql_insert_cmds, conn, pbar=pbar)
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
        conn.commit()
        pbar_time += pbar.format_dict['elapsed']
        pbar.close()

        # Close the connection
        conn.close()
        return len(sql_insert_cmds) + len(self.sql_table_creation_cmds), pbar_time

    @staticmethod
    def _drop_tables(data: dict, conn: Connection) -> None:
        """Drop all tables in the database that also is in the given data.

        Args:
            data ([type]): [description]
            conn ([type]): [description]
        """
        conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
        for key in data.keys():
            if '*' in key:
                key = re.sub("(\*)", "_star", key)
            if '@' in key:
                key = re.sub("(@)", "_", key)
            # if 'range' in key:
            #     key = re.sub("range","range_", key)
            conn.execute(text(f"drop table if exists {key} CASCADE;"))
            conn.commit()
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))

    @staticmethod
    def _execute_cmds(sql_cmds: Union[list, OrderedSet], conn: Connection, pbar: Optional[tqdm] = None) -> None:
        """Execute the given sql commands.

        Args:
            sql_cmds ([type]): [description]
            conn ([type]): [description]    
        """
        for cmd in sql_cmds:
            if '*' in cmd:
                cmd = re.sub("(\*)", "_star", cmd)
            if '@' in cmd:
                cmd = re.sub("(@)", "_", cmd)
            # if 'range' in cmd:
            #     cmd = re.sub("range","range_", cmd)
            try:
                # To execute the SQL query
                conn.execute(text(cmd))

                # To commit the changes
                conn.commit()
            except Exception as e:
                LOGGER.error(f"ERROR: {e}")
                LOGGER.debug(f"CMD: {cmd}")
                raise e

            if pbar is not None:
                pbar.update(1)


def doc_val_same_as_filter_val(document_value: Any, filter_value: Any) -> bool:
    """
    Compares the document value to the filter value.
    Args:
        document_value: The mongo document value.
        filter_value: The filter value.

    Returns:
        A bool value that indicates whether the mongo document values is the same as the filter value.
    """
    if isinstance(filter_value, list):
        if isinstance(document_value, list):
            return all([val in document_value for val in filter_value])
        else:
            return document_value in filter_value
    elif isinstance(filter_value, dict):
        if not isinstance(document_value, dict):
            LOGGER.warning(
                f"FILTERS: {filter_value} is of type dict but the document value: {document_value}"
                f" is not of type dict")
            return False
        all_true = True
        for fk, fv in filter_value.items():
            if fk in document_value:
                all_true = all_true and doc_val_same_as_filter_val(document_value[fk], fv)
                if not all_true:
                    return False
            else:
                return False
        return True
    else:
        return mon2py(document_value) == filter_value


def filter_neems(collection: List[Dict], neem_filters: Dict) -> List[Dict]:
    """
    Remove neems that does not conform to the given filter values.
    Args:
        collection: list of neems as a list of dictionaries.
        neem_filters: key-value pairs that should exist in the neems.
    Returns:
        A list of dictionaries representing the filtered collection.
    """
    collection_copy = deepcopy(collection)
    for doc in collection:
        for k, v in neem_filters.items():
            if k in doc:
                if not doc_val_same_as_filter_val(doc[k], v):
                    collection_copy.remove(doc)
                    break
            else:
                collection_copy.remove(doc)
                break
    return collection_copy


def get_neems_not_in_sql_database(collection: List[Dict], engine: Engine) -> List[Dict]:
    """
    Get the neems that are not yet in the SQL database.
    Args:
        collection: List of neems as list of dictionaries.
        engine: SQLAlchemy engine.

    Returns:
        The filtered neems after removing neems that already exist in the SQL database.

    """
    ids = get_value_from_sql("neems", engine, col_name='_id')
    new_collection = [doc for doc in collection if str(doc['_id']) not in ids]
    if len(new_collection) == 0:
        LOGGER.warning("NO NEW NEEMS FOUND")
    return new_collection


def select_collections_inside_the_requested_batches(collection: List[Dict],
                                                    start_batch: int,
                                                    batch_size: int,
                                                    number_of_batches: int):
    """
    Select the collections with index within the batch start and end indices.
    Args:
        collection: List of dictionaries.
        start_batch: Index of the start batch.
        batch_size: Size of each batch.
        number_of_batches: Number of batches required.

    Returns:
        The filtered collection after removing collections outside the requested batches.
    """
    last_collection_idx = min(start_batch * batch_size + number_of_batches * batch_size, len(collection))
    return collection[start_batch * batch_size: last_collection_idx]


def is_neem_collection_empty(collection_name: str, neem_id: ObjectId, collection: List[Dict]) -> bool:
    """
    Checks if the neem collection is empty or not.
    Args:
        collection_name: Name of the collection
        neem_id: id of the neem to which the colleciton belongs.
        collection: The collection to check.

    Returns:
        True if the collections is empty, False otherwise.
    """
    if len(collection) == 0:
        LOGGER.debug(f"NO DOCUMENTS FOUND FOR {collection_name}")
        if neem_id is not None:
            LOGGER.debug(f"NEEM_ID = {neem_id}")
        return True
    else:
        return False


def filter_and_select_neems_in_batches(collection: List[Dict], engine: Engine,
                                       neem_filters: Optional[dict] = None,
                                       start_batch: Optional[int] = 0,
                                       batch_size: Optional[int] = 4,
                                       number_of_batches: Optional[int] = -1) -> List[Dict]:
    """Filter neem collections and select only the neems in the requested batches

        Args:
            collection (list): [The collection of documents]
            engine (Engine): [The SQLAlchemy engine]
            neem_filters (dict, optional): [The filters used to select certain neems that conform with conditions in
             the filters]. Defaults to None.
            start_batch (int, optional): [The start batch of batches of neems to be moved to sql database].
             Defaults to 0.
            batch_size (int, optional): [The size of the batch of neems (i.e. number of neems per batch)].
             Defaults to 4.
            number_of_batches (int, optional): [The number of batches to put into sql]. Defaults to -1 which uses all
             neems.
        Returns:
            The filtered collection of neems.
    """
    if neem_filters is not None:
        collection = filter_neems(collection, neem_filters)
        if len(collection) == 0:
            LOGGER.warning("NO NEEMS FOUND THAT CONFORM TO THE GIVEN FILTERS")
            return []

    collection = get_neems_not_in_sql_database(collection, engine)

    for doc in collection:
        LOGGER.info(f"FOUND NEW NEEM: {doc['_id']}")

    collection = select_collections_inside_the_requested_batches(collection,
                                                                 start_batch,
                                                                 batch_size,
                                                                 number_of_batches)
    return collection


def neem_collection_to_sql(name: str, collection: List[Dict], sql_creator: SQLCreator,
                           neem_id: Optional[ObjectId] = None, pbar: Optional[List[tqdm]] = None,
                           neem_filters: Optional[dict] = None,
                           start_batch: Optional[int] = 0,
                           batch_size: Optional[int] = 4,
                           number_of_batches: Optional[int] = -1) -> List[Dict]:
    """Convert a collection of documents to sql commands.
    
    Args:
        name (str): [The name of the collection]
        collection (list): [The collection of documents]
        sql_creator (SQLCreator): [The sql creator object]
        neem_id (ObjectId, optional): [The neem_id of the collection if the collection belongs to a neem].
         Defaults to None.
        pbar (tqdm, optional): [The progress bar]. Defaults to None.
        neem_filters (dict, optional): [The filters used to select certain neems that conform with conditions in
         the filters]. Defaults to None.
        start_batch (int, optional): [The start batch of batches of neems to be moved to sql database]. Defaults to 0.
        batch_size (int, optional): [The size of the batch of neems (i.e. number of neems per batch)]. Defaults to 4.
        number_of_batches (int, optional): [The number of batches to put into sql]. Defaults to -1 which uses all neems.
    """

    if is_neem_collection_empty(name, neem_id, collection):
        return []

    if name == "neems":
        collection = filter_and_select_neems_in_batches(collection, sql_creator.engine, neem_filters, start_batch,
                                                        batch_size, number_of_batches)

    meta_sql_creator = SQLCreator(engine=sql_creator.engine)

    if neem_id is not None:
        [doc.update({"neem_id": deepcopy(neem_id)}) for doc in collection]

    for doc in collection:
        meta_sql_creator.find_relationships(name, doc)
    meta_sql_creator.filter_null_tables()
    sql_creator.not_always_there.extend(meta_sql_creator.not_always_there)
    sql_creator.one_item_lists.extend(meta_sql_creator.one_item_lists)

    for doc in collection:
        sql_creator.convert_to_sql(name, doc)
        if pbar is not None:
            [pb.update(1) for pb in pbar]

    if neem_id is not None:
        sql_creator.add_foreign_key("neems", name, "neem_id", parent_col_name="_id")

    return collection


# noinspection PyTypeChecker
def json_to_sql(top_table_name: str,
                json_data: list,
                sqlalachemy_engine: Engine,
                filter_doc: Optional[Callable[[dict], Tuple[Optional[str], dict, str]]] = None,
                drop_tables: Optional[bool] = True,
                value_mapping_func: Optional[Callable[[object, Optional[str]], object]] = None,
                pbar: Optional[tqdm] = None,
                count_mode: Optional[bool] = False) -> Optional[int]:
    """Convert a json file to sql commands.

    Args:
        top_table_name (str): [The name of the top table]
        json_data (list): [The json data]
        sqlalachemy_engine (Engine): [The sql alchemy engine]
        filter_doc (Callable[[dict], Tuple[str, dict, str]], optional): [A function that takes a document and returns
         a tuple of the name of the table, the document, and the iri of the document]. Defaults to None.
        drop_tables (bool, optional): [If True, will drop all tables in the database that also is in the given data].
         Defaults to True.
        value_mapping_func (Callable[[object, Optional[str]], object], optional): [A function that takes a value and
         the name of the column and returns the value to be inserted into the database]. Defaults to None.
        pbar (tqdm, optional): [The progress bar]. Defaults to None.
        count_mode (bool, optional): [If True, will return the number of documents in the json data]. Defaults to False.
    """
    n_doc = 0
    sql_creator = SQLCreator(value_mapping_func=value_mapping_func, engine=sqlalachemy_engine,
                             tosql_func=lambda v, table_name: get_sql_type_from_pyval(v))
    funcs = [sql_creator.find_relationships, sql_creator.convert_to_sql]
    for f_i, func in enumerate(funcs):
        for doc in json_data:
            name = top_table_name
            if filter_doc is not None:
                name, doc, iri = filter_doc(doc)
                if doc is None:
                    continue
                if name is None:
                    name = top_table_name
                elif f_i == 0:
                    sql_creator.name_type[iri] = name
                if np.iterable(name) and not isinstance(name, str):
                    for n in name:
                        if not count_mode:
                            func(n, doc)
                        if pbar is not None:
                            pbar.update(1)
                        n_doc += 1
                    continue
            if not count_mode:
                func(name, doc)
            if pbar is not None:
                pbar.update(1)
            n_doc += 1
        if f_i == 0 and not count_mode:
            sql_creator.filter_null_tables()
    if count_mode:
        return n_doc
    sql_creator.reference_to_existing_table()
    LOGGER.debug(f"number_of_json_documents = {n_doc}")
    sql_creator.upload_data_to_sql(drop_tables=drop_tables)


def dict_to_sql(data: dict,
                sql_creator: SQLCreator,
                neem_id: Optional[ObjectId] = None,
                pbar: Optional[List[tqdm]] = None) -> None:
    """Convert a dictionary into a SQL table .

    Args:
        data (dict): [The dictionary to be converted to sql]
        sql_creator (SQLCreator): [The sql creator object]
        neem_id (Optional[ObjectId], optional): [The neem id of the data if the data belongs to a neem].
         Defaults to None.
        pbar (Optional[tqdm], optional): [The progress bar]. Defaults to None.
    """
    neem_id_val = mon2py(deepcopy(neem_id)) if neem_id is not None else None
    for key, docs in data.items():
        if '"' in key:
            key = re.sub('(\")', "", key)
        for doc in docs:
            if neem_id_val is not None:
                doc['neem_id'] = neem_id_val
            sql_creator.convert_to_sql(key, doc)
            if neem_id_val is not None:
                sql_creator.add_foreign_key('neems', key, 'neem_id', parent_col_name="_id")
            if pbar is not None:
                [pb.update(1) for pb in pbar]


def index_predicate_tables(sql_creator: SQLCreator, use_pbar: Optional[bool] = True) -> Tuple[int, float]:
    """Index predicate tables .

    Args:
        sql_creator (SQLCreator): [The sql creator object]
        use_pbar (Optional[bool], optional): [Whether to use a progress bar or not]. Defaults to True.

    Returns:
        Tuple[int, float]: [The number of tables and the time it took to index the tables]
    """
    data_to_insert_cp = deepcopy(sql_creator.data_to_insert)
    pbar = None
    total = 0
    if use_pbar:
        total = sum([len(v) for k, v in data_to_insert_cp.items()])
        pbar = tqdm(total=total, desc="Indexing Predicate Tables", colour="#FFA500")
    for key, cols in data_to_insert_cp.items():
        for i, (col_name, col_data) in enumerate(cols.items()):
            if pbar is not None:
                pbar.update(1)
            if not isinstance(col_data[0], str):
                continue
            if col_name == 'ID':
                continue
            sql_creator.create_index(key, col_name)
    pbar_time = 0
    if pbar is not None:
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()
    return total, pbar_time


def link_tf_and_triples(data: dict, sql_creator: SQLCreator, use_pbar: Optional[bool] = True) -> Tuple[int, float]:
    """Link the tf and triples data .

    Args:
        data (dict): [The data to be linked]
        sql_creator (SQLCreator): [The sql creator object]
        use_pbar (Optional[bool], optional): [Whether to use a progress bar or not]. Defaults to True.

    Returns:
        Tuple[int, float]: [The number of iterations and the time it took to link the data]
    """
    time_start = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['o'])
    tsi = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['dul_TimeInterval_s'])
    tei = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['dul_TimeInterval_s'])
    time_end = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['o'])
    e_neem_id = np.array(sql_creator.data_to_insert['soma_hasIntervalEnd']['neem_id'])
    s_neem_id = np.array(sql_creator.data_to_insert['soma_hasIntervalBegin']['neem_id'])
    stamp = np.array(data['tf_header']['stamp'])
    links = np.array(data['tf']['child_frame_id'])
    stamp_neem_id = np.array(data['tf']['neem_id'])
    latest_stampidx, latest_sidx, latest_eidx = 0, 0, 0
    if 'tf_header' in sql_creator.sql_meta_data:
        latest_stampidx = sql_creator.get_max_id_from_sql('tf_header')
    if 'soma_hasIntervalBegin' in sql_creator.sql_meta_data:
        latest_sidx = sql_creator.get_max_id_from_sql('soma_hasIntervalBegin')
    if 'soma_hasIntervalEnd' in sql_creator.sql_meta_data:
        latest_eidx = sql_creator.get_max_id_from_sql('soma_hasIntervalEnd')
    e_idx_list = []
    s_idx_list = []
    stamp_idx = []
    pbar = None
    if use_pbar:
        pbar = tqdm(total=len(time_end), desc="Linking TF and Triples", colour="#FFA500")
    for e_idx, e in enumerate(time_end):
        neem_id_cond = np.equal(s_neem_id, e_neem_id[e_idx])
        time_interval_cond = np.equal(tsi, tei[e_idx])
        s_idicies = np.argwhere(np.logical_and(time_interval_cond, neem_id_cond)).flatten()
        for s_idx in s_idicies:
            s = time_start[s_idx]
            cond1 = np.greater_equal(stamp, s)
            cond2 = np.less(stamp, e)
            cond3 = np.logical_and(np.equal(e_neem_id[e_idx], stamp_neem_id), np.equal(s_neem_id[s_idx], stamp_neem_id))
            cond4 = True
            res = np.argwhere(np.logical_and(np.logical_and(np.logical_and(cond1, cond2), cond3), cond4)).flatten()
            res = res[np.argsort(stamp[res])]
            np.unique(res, return_index=True)
            encountered_links = []
            new_res = OrderedSet()
            for r in res:
                if links[r] in encountered_links:
                    continue
                else:
                    encountered_links.append(links[r])
                    new_res.add(r + 1)
            encountered_links = []
            for r in reversed(res):
                if links[r] in encountered_links:
                    continue
                else:
                    encountered_links.append(links[r])
                    new_res.add(r + 1)
            new_res = list(new_res)
            assert all([r - 1 in res for r in new_res])
            assert all([s <= stamp[r - 1] < e for r in new_res])
            res = [r + latest_stampidx for r in new_res]
            if len(res) > 0:
                stamp_idx.extend(res)
                e_idx_list.extend([e_idx + 1 + latest_eidx] * len(res))
                s_idx_list.extend([s_idx + 1 + latest_sidx] * len(res))
        if pbar is not None:
            pbar.update(1)
    pbar_time = 0
    if pbar is not None:
        pbar_time = pbar.format_dict['elapsed']
        pbar.close()
    new_table_name = sql_creator.link_column_to_new_table('tf_header', 'soma_hasIntervalBegin',
                                                          stamp_idx, s_idx_list)
    sql_creator.add_foreign_key_column('soma_hasIntervalEnd', new_table_name, 'soma_hasIntervalEnd_ID')
    sql_creator.data_to_insert[new_table_name]['soma_hasIntervalEnd_ID'] = e_idx_list
    return len(time_end), pbar_time


def mongo_collection_to_list_of_dicts(collection: Collection) -> List[Dict]:
    """Convert a mongodb collection to a list of dictionaries .

    Args:
        collection (Collection): [a mongodb collection]

    Returns:
        [List[Dict]]: [a list of collection documents]
    """
    return [doc for doc in collection.find({})]


def link_and_upload(sql_creator: SQLCreator,
                    predicate_sql_creator: SQLCreator,
                    data_sizes: dict, data_times: dict,
                    reset: Optional[bool] = False,
                    drop: Optional[bool] = False) -> float:
    """Index the predicate tables, Link tf and triples together, and upload the data to the database.

    Args:
        sql_creator (SQLCreator): [the sql creator object]
        predicate_sql_creator (SQLCreator): [the triples sql creator object]
        data_sizes (dict): [a dictionary to store the data sizes]
        data_times (dict): [a dictionary to store the data times]
        reset (Optional[bool], optional): [reset the SQLCreator objects to empty the data]. Defaults to False.
        drop (Optional[bool], optional): [drop the tables that will be inserted first]. Defaults to False.
    
    Returns:
        [float]: [the total time to upload the data]
    """

    total_time = 0
    data = sql_creator.data_to_insert
    predicate_indexing_sz, predicate_indexing_time = index_predicate_tables(predicate_sql_creator)
    total_time += predicate_indexing_time
    data_sizes['predicate_indexing'].append(predicate_indexing_sz)
    data_times['predicate_indexing'].append(predicate_indexing_time)
    tf_triples_linking_sz, tf_triples_linking_time = link_tf_and_triples(data, predicate_sql_creator)
    total_time += tf_triples_linking_time
    data_sizes['tf_triples_linking'].append(tf_triples_linking_sz)
    data_times['tf_triples_linking'].append(tf_triples_linking_time)

    sql_creator.merge_with(predicate_sql_creator)
    data_upload_sz, data_upload_time = sql_creator.upload_data_to_sql(drop_tables=drop)
    total_time += data_upload_time
    data_sizes['data_upload'].append(data_upload_sz)
    data_times['data_upload'].append(data_upload_time)

    if reset:
        sql_creator.reset_data()
        predicate_sql_creator.reset_data()

    return total_time


def drop_all_tables(engine: Engine, sql_data_base_name: str):
    conn = engine.connect()
    conn.execute(text("SET FOREIGN_KEY_CHECKS=0;"))
    drop_cmd = text(f"""
        SELECT CONCAT('DROP TABLE IF EXISTS `', TABLE_SCHEMA, '`.`', TABLE_NAME, '` CASCADE;')
        FROM information_schema.TABLES
        WHERE TABLE_SCHEMA = '{sql_data_base_name}';
    """)
    try:
        result = conn.execute(drop_cmd)
        for row in result:
            drop_statement = row[0]  # Assuming the concatenated statement is in the first column
            conn.execute(text(drop_statement))
        conn.commit()
    except SQLAlchemyError as e:
        print(f"Error executing DROP TABLE command: {e}")
    finally:
        conn.execute(text("SET FOREIGN_KEY_CHECKS=1;"))
        conn.close()


def get_mongo_neems_and_put_into_sql_database(engine: Engine, client: MongoClient, sql_database_name: str,
                                              drop_tables: Optional[bool] = False,
                                              allow_increasing_sz: Optional[bool] = False,
                                              allow_text_indexing: Optional[bool] = False,
                                              max_null_percentage: Optional[float] = 0.1,
                                              skip_bad_triples: Optional[bool] = False,
                                              neem_filters: Optional[dict] = None,
                                              batch_size: Optional[int] = 4,
                                              number_of_batches: Optional[int] = -1,
                                              start_batch: Optional[int] = 0,
                                              dump_data_stats: Optional[bool] = True) -> None:
    db = client.neems

    if drop_tables:
        drop_all_tables(engine, sql_database_name)

    t2sql = TriplesToSQL(logger=LOGGER)
    sql_creator = SQLCreator(engine, tosql_func=lambda v, table_name: get_sql_type_from_pyval(v),
                             allow_increasing_size=allow_increasing_sz,
                             allow_text_indexing=allow_text_indexing,
                             allowed_missing_percentage=max_null_percentage)
    predicate_sql_creator = SQLCreator(engine, tosql_func=t2sql.get_sql_type,
                                       allow_increasing_size=allow_increasing_sz,
                                       allow_text_indexing=allow_text_indexing,
                                       allowed_missing_percentage=max_null_percentage)

    # Adding meta data
    meta = db.meta
    meta_lod = mongo_collection_to_list_of_dicts(meta)
    number_of_batches = number_of_batches if number_of_batches > 0 else (
        int(ceil(len(meta_lod) / batch_size) - start_batch))
    meta_lod = neem_collection_to_sql("neems",
                                      meta_lod,
                                      sql_creator=sql_creator,
                                      neem_filters=neem_filters,
                                      start_batch=start_batch,
                                      batch_size=batch_size,
                                      number_of_batches=number_of_batches)
    meta_lod = list(reversed(meta_lod))
    if len(meta_lod) == 0:
        LOGGER.error("NO NEEMS FOUND (Probably no meta data collection OR no neems with the given filters)")
        raise ValueError("NO NEEMS FOUND (Probably no meta data collection OR no neems with the given filters)")
    meta_lod_batches = [meta_lod[i:i + batch_size] for i in range(0, len(meta_lod), batch_size)]
    coll_names = ['tf', 'triples', 'annotations', 'inferred']
    verification_time = 0
    total_time = 0
    tf_len = []
    # Verifying data
    for batch_idx, batch in enumerate(meta_lod_batches):

        verification = tqdm(total=len(batch) * len(coll_names),
                            desc=f"Verifying Data (batch {batch_idx + 1}/{number_of_batches})", colour='#FFA500')

        for d_i, doc in enumerate(batch):

            _id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(_id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    LOGGER.debug(f"number of docs for {cname} is {len(lod)}")
                    LOGGER.debug(f"neem_id is {_id}")
                    t2sql.mongo_triples_to_graph(lod, skip=skip_bad_triples)
                    _ = t2sql.graph_to_dict()
                elif cname == 'tf':
                    tf_len.append(len(lod))
                verification.update(1)
        verification_time += verification.format_dict['elapsed']
        verification.close()
    LOGGER.debug(f"tf data size is {tf_len}")
    total_time += verification_time

    # Creating & Executing SQL commands from the data
    total_meta_time = 0
    total_creation_time = 0
    total_tf_creation_time = 0
    total_triples_creation_time = 0
    data_sizes = {c: [] for c in coll_names}
    data_sizes.update({'predicate_indexing': [], 'tf_triples_linking': [], 'data_upload': []})
    data_times = {c: [] for c in coll_names}
    data_times.update({'predicate_indexing': [], 'tf_triples_linking': [], 'data_upload': []})
    for batch_idx, batch in enumerate(meta_lod_batches):
        all_docs = 0
        collections = {}
        meta_data = tqdm(total=len(batch) * len(coll_names),
                         desc=f"Collecting & Restructuring Data (batch {batch_idx + 1}/"
                              f"{number_of_batches})",
                         colour='#FFA500')
        for d_i, doc in enumerate(batch):

            _id = str(doc['_id'])
            for cname in coll_names:
                coll = db.get_collection(_id + '_' + cname)
                lod = mongo_collection_to_list_of_dicts(coll)
                if cname in ['annotations', 'triples']:
                    t2sql.mongo_triples_to_graph(lod, skip=skip_bad_triples)
                    lod = t2sql.graph_to_dict()
                    sz = sum([len(v) for v in lod.values()])
                else:
                    sz = len(lod)
                all_docs += sz
                collections[_id + '_' + cname] = {'name': cname, 'data': lod, 'id': doc['_id']}
                meta_data.update(1)
                if sz > 0:
                    data_sizes[cname].append(sz)
        total_meta_time += meta_data.format_dict['elapsed']
        meta_data.close()

        all_neems_pbar = tqdm(total=all_docs, desc="Generating SQL Commands", colour='#FFA500')

        for coll_i, (cname, coll) in enumerate(collections.items()):
            if len(coll['data']) == 0:
                continue
            neem_pbar = tqdm(total=len(coll['data']), desc=cname, colour='#FFA500', leave=False)
            if coll['name'] not in ['annotations', 'triples']:
                neem_collection_to_sql(coll['name'],
                                       coll['data'],
                                       sql_creator=sql_creator,
                                       neem_id=coll['id'], pbar=[neem_pbar, all_neems_pbar])
                total_tf_creation_time += neem_pbar.format_dict['elapsed']
            else:
                dict_to_sql(coll['data'],
                            predicate_sql_creator,
                            neem_id=coll['id'], pbar=[neem_pbar, all_neems_pbar])
                total_triples_creation_time += neem_pbar.format_dict['elapsed']
            neem_pbar.close()
            data_times[coll['name']].append(neem_pbar.format_dict['elapsed'])
        total_creation_time += all_neems_pbar.format_dict['elapsed']
        all_neems_pbar.close()

        link_and_upload_time = link_and_upload(sql_creator, predicate_sql_creator, data_sizes, data_times, reset=True,
                                               drop=drop_tables)
        total_time += link_and_upload_time
        drop_tables = False

    client.close()
    total_time += total_meta_time
    total_time += total_creation_time

    data_stats = {'data_sizes': data_sizes, 'data_times': data_times}
    LOGGER.info(f"Verification Time = {verification_time}")
    LOGGER.info(f"Meta Time = {total_meta_time}")
    LOGGER.info(f"TF Creation Time = {total_tf_creation_time}")
    LOGGER.info(f"Triples Creation Time = {total_triples_creation_time}")
    LOGGER.info(f"Total Creation Time = {total_creation_time}")
    LOGGER.info(f"Predicate Linking Time = {sum(data_times['predicate_indexing'])}")
    LOGGER.info(f"TF Triples Linking Time = {sum(data_times['tf_triples_linking'])}")
    LOGGER.info(f"Data Upload Time = {sum(data_times['data_upload'])}")
    LOGGER.info(f"Total Time = {total_time}")

    if dump_data_stats:
        with open('data_stats.pickle', 'wb') as f:
            pickle.dump(data_stats, f, protocol=pickle.HIGHEST_PROTOCOL)


def parse_arguments():
    """
    Parse command line arguments.
    Returns: the parsed arguments.

    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--drop', '-d', action='store_true', help='Drop the tables that will be inserted first')
    parser.add_argument('--skip_bad_triples', '-sbt', action='store_true',
                        help='Skip triples that are missing one of subject, predicate or object')
    parser.add_argument('--allow_increasing_sz', '-ais', action='store_true',
                        help='Allow increasing the size of the original data type of a column')
    parser.add_argument('--allow_text_indexing', '-ati', action='store_true',
                        help='Allow indexing text type columns')
    parser.add_argument('--max_null_percentage', '-mnp', default=5, type=float,
                        help='Maximum percentage of null values allowed in a column otherwise it will be put in'
                             ' a separate table')
    parser.add_argument('--batch_size', '-bs', default=4, type=int, help='Batch size (number of neems per'
                                                                         ' batch) for uploading data to the database, \
        this is important for memory issues, if you encounter a memory problem try to reduce that number')
    parser.add_argument('--number_of_batches', '-nb', default=0, type=int,
                        help='Number of batches to upload the data to the database')
    parser.add_argument('--start_batch', '-sb', default=0, type=int, help='Start uploading from this batch')
    parser.add_argument('--dump_data_stats', '-dds', action='store_true',
                        help='Dump the data statistics like the sizes and time taken for each operation to a file')
    parser.add_argument('--sql_username', '-su', help='SQL username')
    parser.add_argument('--sql_password', '-sp', help='SQL password')
    parser.add_argument('--sql_database', '-sd', help='SQL database name', required=True)
    parser.add_argument('--sql_host', '-sh', default="localhost", help='SQL host name')
    parser.add_argument('--sql_uri', '-suri', type=str, default=None,
                        help='SQL URI this replaces the other SQL arguments')
    parser.add_argument('--mongo_username', '-mu', help='MongoDB username')
    parser.add_argument('--mongo_password', '-mp', help='MongoDB password')
    parser.add_argument('--mongo_database', '-md', default="neems", help='MongoDB database name')
    parser.add_argument('--mongo_host', '-mh', default="localhost", help='MongoDB host name')
    parser.add_argument('--mongo_port', '-mpt', default=27017, type=int, help='MongoDB port number')
    parser.add_argument('--mongo_uri', '-muri', type=str, default=None,
                        help='MongoDB URI this replaces the other MongoDB arguments')
    parser.add_argument('--log_level', '-logl', default='INFO',
                        help='Log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)')
    parser.add_argument('--neem_filters_yaml', '-nfy', type=str, default=None,
                        help='YAML file containing the neem filters')
    return parser.parse_args()


def get_mongo_uri(username: Optional[str] = None,
                  password: Optional[str] = None,
                  host: Optional[str] = None,
                  port: Optional[str] = None,
                  database: Optional[str] = None) -> str:
    """
    Get the MongoDB URI.
    Args:
        username: The MongoDB username.
        password: The MongoDB password.
        host: The MongoDB host.
        port: The MongoDB port.
        database: The MongoDB database.

    Returns:
        The MongoDB URI.
    """
    if username is None and password is None:
        uri = f"mongodb://{host}:{port}/{database}"
    else:
        uri = (f"mongodb://{username}:{password}@{host}:"
               f"{port}/{database}")
    return uri


def get_sql_uri(username: str, password: str, host: str, database: str) -> str:
    """
    Get the SQL URI.
    Args:
        username: The SQL username.
        password: The SQL password.
        host: The SQL host.
        database: The SQL database.

    Returns:
        The SQL URI.
    """
    uri = (f"mysql+pymysql://{username}:{password}@{host}/"
           f"{database}?charset=utf8mb4")
    return uri


def connect_to_mongo_and_get_client(uri):
    """
    Connect to the MongoDB server and get the client.
    Args:
        uri: The MongoDB URI.

    Returns:
        The MongoDB client.

    """
    client = MongoClient(uri, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
    try:
        client.server_info()
        LOGGER.debug(client.server_info())
    except Exception:
        LOGGER.error("Unable to connect to the MongoDB server.")
        raise
    return client


def set_logging_level(log_level: str):
    """
    Set the logging level.
    Args:
        log_level: The logging level.
    """
    CustomLogger.set_log_level(log_level_dict[log_level])


def get_neem_filters_from_yaml(neem_filters_yaml: Optional[str] = None) -> dict:
    """
    Get the neem filters from a YAML file.
    Args:
        neem_filters_yaml: The YAML file containing the neem filters.

    Returns:
        The neem filters.
    """
    if neem_filters_yaml is not None:
        with open(neem_filters_yaml, "r") as stream:
            try:
                filters = yaml.safe_load(stream)
                LOGGER.debug(filters)
            except yaml.YAMLError as exc:
                LOGGER.error(exc)
                raise
    else:
        filters = None
    return filters
