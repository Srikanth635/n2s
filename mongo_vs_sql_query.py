from pymongo import MongoClient
from pymongo.collection import Collection
from bson.objectid import ObjectId
from bson.decimal128 import Decimal128
import numpy as np
from datetime import datetime
import re
from time import time
from sqlalchemy import create_engine, Engine, Connection
from sqlalchemy import text
from copy import deepcopy
from orderedset import OrderedSet
from triples_to_sql import TriplesToSQL, get_sql_type_from_pyval
from tqdm import tqdm
import argparse
import pickle
from typing import Optional, Callable, Tuple, List, Dict
import logging
import yaml
import sys
from pprint import pprint




class CustomFormatter(logging.Formatter):

    grey = "\x1b[38;20m"
    yellow = "\x1b[33;20m"
    red = "\x1b[31;20m"
    bold_red = "\x1b[31;1m"
    reset = "\x1b[0m"
    format = "%(asctime)s - %(name)s - %(levelname)s - %(message)s (%(filename)s:%(lineno)d)"
    info_format = format = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"

    FORMATS = {
        logging.DEBUG: grey + format + reset,
        logging.INFO: grey + info_format + reset,
        logging.WARNING: yellow + format + reset,
        logging.ERROR: red + format + reset,
        logging.CRITICAL: bold_red + format + reset
    }

    def format(self, record):
        log_fmt = self.FORMATS.get(record.levelno)
        formatter = logging.Formatter(log_fmt)
        return formatter.format(record)

# create logger with 'spam_application'
LOGGER = logging.getLogger("NEEM_SQLIZER")
LOGGER.setLevel(logging.INFO)

# create console handler with a higher log level
ch = logging.StreamHandler(open("stdout_file.txt", "w"))
ch.setLevel(logging.INFO)

ch.setFormatter(CustomFormatter())
LOGGER.addHandler(ch)

sql_str_types = ['CHAR', 'VARCHAR', 'TEXT', 'MEDIUMTEXT', 'LONGTEXT']

def mongo_collection_to_list_of_dicts(collection: Collection) -> List[Dict]:
    """Convert a mongodb collection to a list of dictionaries .

    Args:
        collection (Collection): [a mongodb collection]

    Returns:
        [List[Dict]]: [a list of of collection documents]
    """
    return [doc for doc in collection.find({})]
    

if __name__ == "__main__":

    # Parse command line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('--drop', '-d', action='store_true', help='Drop the tables that will be inserted first')
    parser.add_argument('--skip_bad_triples', '-sbt', action='store_true', help='Skip triples that are missing one of subject, predicate or object')
    parser.add_argument('--allow_increasing_sz', '-ais', action='store_true', help='Allow increasing the size of the original data type of a column')
    parser.add_argument('--allow_text_indexing', '-ati', action='store_true', help='Allow indexing text type columns')
    parser.add_argument('--max_null_percentage', '-mnp', default=5, type=float, help='Maximum percentage of null values allowed in a column otherwise it will be put in a separate table')
    parser.add_argument('--batch_size', '-bs', default=4, type=int, help='Batch size (number of neems per batch) for uploading data to the database, \
        this is important for memory issues, if you encounter a memory problem try to reduce that number')
    parser.add_argument('--num_batches', '-nb', default=0, type=int, help='Number of batches to upload the data to the database')
    parser.add_argument('--start_batch', '-sb', default=0, type=int, help='Start uploading from this batch')
    parser.add_argument('--dump_data_stats', '-dds', action='store_true', help='Dump the data statistics like the sizes and time taken for each operation to a file')
    parser.add_argument('--sql_username', '-su', help='SQL username')
    parser.add_argument('--sql_password', '-sp', help='SQL password')
    parser.add_argument('--sql_database', '-sd', help='SQL database name', required=True)
    parser.add_argument('--sql_host', '-sh', default="localhost", help='SQL host name')
    parser.add_argument('--sql_uri', '-suri', type=str, default=None, help='SQL URI this replaces the other SQL arguments')
    parser.add_argument('--mongo_username', '-mu', help='MongoDB username')
    parser.add_argument('--mongo_password', '-mp', help='MongoDB password')
    parser.add_argument('--mongo_database', '-md', default="neems", help='MongoDB database name')
    parser.add_argument('--mongo_host', '-mh', default="localhost", help='MongoDB host name')
    parser.add_argument('--mongo_port', '-mpt', default=27017, type=int, help='MongoDB port number')
    parser.add_argument('--mongo_uri', '-muri', type=str, default=None, help='MongoDB URI this replaces the other MongoDB arguments')
    parser.add_argument('--log_level', '-logl', default='INFO', help='Log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)')
    parser.add_argument('--neem_filters_yaml', '-nfy', type=str, default=None, help='YAML file containing the neem filters')
    args = parser.parse_args()
    batch_size = args.batch_size
    dump_data_stats = args.dump_data_stats
    sql_username = args.sql_username
    sql_password = args.sql_password
    sql_database = args.sql_database
    sql_host = args.sql_host
    sql_uri = args.sql_uri
    mongo_username = args.mongo_username
    mongo_password = args.mongo_password
    mongo_database = args.mongo_database
    mongo_host = args.mongo_host
    mongo_port = args.mongo_port
    mongo_uri = args.mongo_uri
    drop = args.drop
    skip_bad_triples = args.skip_bad_triples
    allow_increasing_sz = args.allow_increasing_sz
    allow_text_indexing = args.allow_text_indexing
    max_null_percentage = args.max_null_percentage
    log_level = args.log_level
    num_batches = args.num_batches
    neem_filters_yaml = args.neem_filters_yaml
    start_batch = args.start_batch

    log_level_dict = {'DEBUG': logging.DEBUG, 'INFO': logging.INFO, 'WARNING': logging.WARNING, 'ERROR': logging.ERROR, 'CRITICAL': logging.CRITICAL}
    
    # set log level
    LOGGER.setLevel(log_level_dict[log_level])
    ch.setLevel(log_level_dict[log_level])

    if neem_filters_yaml is not None:
        with open(neem_filters_yaml, "r") as stream:
            try:
                neem_filters = yaml.safe_load(stream)
                LOGGER.debug(neem_filters)
            except yaml.YAMLError as exc:
                LOGGER.error(exc)
                raise
    else:
        neem_filters = None

    # Replace the uri string with your MongoDB deployment's connection string.
    if mongo_uri is not None:
        MONGODB_URI = mongo_uri
    elif mongo_username is None and mongo_password is None:
        MONGODB_URI = f"mongodb://{mongo_host}:{mongo_port}/{mongo_database}"
    else:
        MONGODB_URI = f"mongodb://{mongo_username}:{mongo_password}@{mongo_host}:{mongo_port}/{mongo_database}"
    # set a 5-second connection timeout
    client = MongoClient(MONGODB_URI, serverSelectionTimeoutMS=5000, unicode_decode_error_handler='ignore')
    try:
        client.server_info()
        LOGGER.debug(client.server_info())
    except Exception:
        LOGGER.error("Unable to connect to the MongoDB server.")
        raise

    # Create SQL engine
    if sql_uri is not None:
        SQL_URI = sql_uri
    else:
        SQL_URI = f"mysql+pymysql://{sql_username}:{sql_password}@{sql_host}/{sql_database}?charset=utf8mb4"
    engine = create_engine(SQL_URI)

    # Connect to the database
    db = client.neems

    # Get neem ids
    meta = db.meta
    meta_lod = mongo_collection_to_list_of_dicts(meta)
    if len(meta_lod) == 0:
        LOGGER.error("NO NEEMS FOUND (Probably no meta data collection OR no neems with the given filters)")
        raise
    neem_ids = [doc['_id'] for doc in meta_lod]
    LOGGER.debug(f"NEEM IDS: {neem_ids}")

    total_time = 0
    all_docs = []
    get_collection_time = []
    single_query_time = []
    append_time = []
    total_per_neem_time = []
    for neem_id in neem_ids:
        start = time()
        triples = db.get_collection(f"{neem_id}_triples")
        get_collection_time.append(time() - start)
        start = time()
        cursor = triples.aggregate([
            { "$match": {"$or": [ {"p": "http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask"}, {'p':'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'o':'http://www.ease-crc.org/ont/SOMA.owl#Gripping'}]} },
            {
                "$lookup":
                {
                    "from": f"{neem_id}_triples",
                    "localField": "o",
                    "foreignField": "s",
                    "as": f"{neem_id}"
                }
            },
            {
                "$unwind": f"${neem_id}"
            },
            {
                "$project": {
                    f"{neem_id}.p*": 0,
                    f"{neem_id}._id": 0,
                    f"{neem_id}.graph": 0,
                    f"{neem_id}.scope": 0,
                    f"{neem_id}.o*": 0,
                    "p*": 0,
                    "o*": 0,
                    "_id": 0,
                    "graph": 0,
                    "scope": 0
                }
            },
            { "$match": {f'{neem_id}.p':'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', f'{neem_id}.o':'http://www.ease-crc.org/ont/SOMA.owl#Gripping'} }
        ])
        single_query_time.append(time() - start)
        start = time()
        all_docs.extend([doc for doc in cursor])
        append_time.append(time() - start)
        total_per_neem_time.append(get_collection_time[-1] + single_query_time[-1] + append_time[-1])

    LOGGER.info(f"Total time: {sum(total_per_neem_time)}")
    LOGGER.info(f"Total get collection time: {sum(get_collection_time)}")
    LOGGER.info(f"Total single query time: {sum(single_query_time)}")
    LOGGER.info(f"Total append time: {sum(append_time)}")
    LOGGER.info(f"Avg per neem time: {sum(total_per_neem_time)/len(neem_ids)}")
    LOGGER.info(f"Avg get collection time: {sum(get_collection_time)/len(neem_ids)}")
    LOGGER.info(f"Avg single query time: {sum(single_query_time)/len(neem_ids)}")
    LOGGER.info(f"Avg append time: {sum(append_time)/len(neem_ids)}")
    LOGGER.info(f"Total number of documents: {len(all_docs)}")



