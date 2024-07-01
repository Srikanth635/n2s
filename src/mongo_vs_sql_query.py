from time import time

from neems_to_sql import mongo_collection_to_list_of_dicts, parse_arguments, \
    get_mongo_uri, connect_to_mongo_and_get_client, filter_and_select_neems_in_batches, filter_neems
from neems_to_sql.logger import CustomLogger, logging

if __name__ == "__main__":

    LOGGER = CustomLogger("MONGO_VS_SQL_QUERY",
                          "mongo_vs_sql_query.txt",
                          logging.DEBUG, reset_handlers=True).get_logger()

    # Replace the uri string with your MongoDB deployment's connection string.
    args = parse_arguments()
    if args.mongo_uri is not None:
        MONGODB_URI = args.mongo_uri
    else:
        MONGODB_URI = get_mongo_uri(args.mongo_username, args.mongo_password, args.mongo_host,
                                    args.mongo_port, args.mongo_database)
    # set a 5-second connection timeout
    mongo_client = connect_to_mongo_and_get_client(MONGODB_URI)
    db = mongo_client.neems

    # Get neem ids
    meta = db.meta
    meta_lod = mongo_collection_to_list_of_dicts(meta)
    meta_lod = filter_neems(meta_lod, {'visibility': True})
    if len(meta_lod) == 0:
        LOGGER.error("NO NEEMS FOUND (Probably no meta data collection OR no neems with the given filters)")
        raise ValueError("NO NEEMS FOUND (Probably no meta data collection OR no neems with the given filters)")
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
            {"$match": {"$or": [{"p": "http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask"},
                                {'p': 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type',
                                 'o': 'http://www.ease-crc.org/ont/SOMA.owl#Gripping'}]}},
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
            {"$match": {f'{neem_id}.p': 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type',
                        f'{neem_id}.o': 'http://www.ease-crc.org/ont/SOMA.owl#Gripping'}}
        ])
        single_query_time.append(time() - start)
        start = time()
        all_docs.extend([doc for doc in cursor])
        append_time.append(time() - start)
        total_per_neem_time.append(get_collection_time[-1] + single_query_time[-1] + append_time[-1])

    LOGGER.info(f"ALL DOCS: {all_docs}")
    LOGGER.info(f"Total time: {sum(total_per_neem_time)}")
    LOGGER.info(f"Total get collection time: {sum(get_collection_time)}")
    LOGGER.info(f"Total single query time: {sum(single_query_time)}")
    LOGGER.info(f"Total append time: {sum(append_time)}")
    LOGGER.info(f"Avg per neem time: {sum(total_per_neem_time) / len(neem_ids)}")
    LOGGER.info(f"Avg get collection time: {sum(get_collection_time) / len(neem_ids)}")
    LOGGER.info(f"Avg single query time: {sum(single_query_time) / len(neem_ids)}")
    LOGGER.info(f"Avg append time: {sum(append_time) / len(neem_ids)}")
    LOGGER.info(f"Total number of documents: {len(all_docs)}")
