from neems_to_sql import (get_neem_filters_from_yaml, get_mongo_uri, get_sql_uri,
                          connect_to_mongo_and_get_client,
                          parse_arguments, set_logging_level, get_mongo_neems_and_put_into_sql_database)
from sqlalchemy import create_engine


if __name__ == "__main__":

    # Parse command line arguments
    args = parse_arguments()

    set_logging_level(args.log_level)

    neem_filters_from_yaml = get_neem_filters_from_yaml(args.neem_filters_yaml)

    # Replace the uri string with your MongoDB deployment's connection string.
    if args.mongo_uri is not None:
        MONGODB_URI = args.mongo_uri
    else:
        MONGODB_URI = get_mongo_uri(args.mongo_username, args.mongo_password, args.mongo_host,
                                    args.mongo_port, args.mongo_database)
    # set a 5-second connection timeout
    mongo_client = connect_to_mongo_and_get_client(MONGODB_URI)

    # Create SQL engine
    if args.sql_uri is not None:
        SQL_URI = args.sql_uri
    else:
        SQL_URI = get_sql_uri(args.sql_username, args.sql_password, args.sql_host, args.sql_database)
    sql_engine = create_engine(SQL_URI, future=True)

    get_mongo_neems_and_put_into_sql_database(sql_engine, mongo_client,
                                              drop_neems=args.drop_neems,
                                              drop_tables=args.drop_tables,
                                              allow_increasing_sz=args.allow_increasing_sz,
                                              allow_text_indexing=args.allow_text_indexing,
                                              max_null_percentage=args.max_null_percentage,
                                              skip_bad_triples=args.skip_bad_triples,
                                              neem_filters=neem_filters_from_yaml,
                                              batch_size=args.batch_size,
                                              number_of_batches=args.number_of_batches,
                                              start_batch=args.start_batch,
                                              dump_data_stats=args.dump_data_stats)
