# neem_to_sql

This is a python package that converts neems from MongoDB to MariaDB (sql).

## Required Setup:

You need to have both [MongoDB](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) and [MariaDB](https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-20-04) setub on your PC.

## Installation

Clone the repository:
```
git clone https://github.com/AbdelrhmanBassiouny/neem_to_sql.git
```

Go to package root directory, then do:
```
pip install -r requirements.txt
```

## Usage:
The usage is straight forward, if you have your new neems on a MongoDB, and you have the credentials for access to the MongoDB and the MariaDB, then you are good to go.
```
usage: migrate_neems_to_sql.py [-h] [--verbose] [--batch_size BATCH_SIZE] [--dump_data_stats] [--sql_username SQL_USERNAME] [--sql_password SQL_PASSWORD]
                               [--sql_database SQL_DATABASE] [--sql_host SQL_HOST] [--sql_uri SQL_URI] [--mongo_username MONGO_USERNAME]
                               [--mongo_password MONGO_PASSWORD] [--mongo_database MONGO_DATABASE] [--mongo_host MONGO_HOST] [--mongo_port MONGO_PORT]
                               [--mongo_uri MONGO_URI]

optional arguments:
  -h, --help            show this help message and exit
  --verbose, -v         Print various intermediate outputs for debugging
  --batch_size BATCH_SIZE, -bs BATCH_SIZE
                        Batch size (number of neems per batch) for uploading data to the database, this is important for memory issues, if you encounter a memory
                        problem try to reduce that number
  --dump_data_stats, -dds
                        Dump the data statistics like the sizes and time taken for each operation to a file
  --sql_username SQL_USERNAME, -su SQL_USERNAME
                        SQL username
  --sql_password SQL_PASSWORD, -sp SQL_PASSWORD
                        SQL password
  --sql_database SQL_DATABASE, -sd SQL_DATABASE
                        SQL database name
  --sql_host SQL_HOST, -sh SQL_HOST
                        SQL host name
  --sql_uri SQL_URI, -suri SQL_URI
                        SQL URI this replaces the other SQL arguments
  --mongo_username MONGO_USERNAME, -mu MONGO_USERNAME
                        MongoDB username
  --mongo_password MONGO_PASSWORD, -mp MONGO_PASSWORD
                        MongoDB password
  --mongo_database MONGO_DATABASE, -md MONGO_DATABASE
                        MongoDB database name
  --mongo_host MONGO_HOST, -mh MONGO_HOST
                        MongoDB host name
  --mongo_port MONGO_PORT, -mpt MONGO_PORT
                        MongoDB port number
  --mongo_uri MONGO_URI, -muri MONGO_URI
                        MongoDB URI this replaces the other MongoDB arguments
```
