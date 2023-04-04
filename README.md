# neem_to_sql

This is a python package that converts neems from MongoDB to MariaDB (sql).

## Required Setup:

You need to have both [MongoDB](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/) and [MariaDB](https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-20-04) setub on your PC.

## Installation

Clone the repository:
```
git clone git@github.com:AbdelrhmanBassiouny/neem_to_sql.git
```

Go to package root directory, then do:
```
pip install -r requirements.txt
```

## Recommendations

I would recommend using a copy of the mongo database instead of the original one to avoide catastrophies or data corruption. You can do that using something similar to the following commands:

```
sudo mkdir -p /opt/backup

sudo mongodump --username "neem_user" --password "neem_password" --authenticationDatabase neems --host "neem_host" --port 28015 --out=/opt/backup/my_mongodump
```

Then you can easily create a copy of it into a local database:

```
mongorestore /opt/backup/my_mongodump
```

Which would normally be accessed using this uri:

```
mongodb://localhost:27017
```

## Usage:

Make sure that you have MonoDB server running:

```
sudo systemctl start mongod.service
```

The usage is straight forward, if you have your new neems on a MongoDB, and you have the credentials for access to the MongoDB and the MariaDB, then you are good to go. The only file you need to run is "migrate_neems_to_sql.py", for example the following command uses the sql uri and the mongo uri instead of providing username, password, and hostname, arguments, this is for providing more flexibility:

```
python migrate_neems_to_sql.py --sql_uri "mysql+pymysql://username:password@localhost/my_sql_database?charset=utf8mb4" --mongo_uri "mongodb://username:password@localhost:27017/neems"
```

Another way is using the specific arguments:

```
python migrate_neems_to_sql.py -su "sql_username" -sp "sql_password" -sh "localhost" -sd "my_sql_database" -mu "mongo_username" -mp "mongo_password" -md "neems" -mh "localhost" -mpt 27017
```

The above commands assumes that you have an sql database called "my_sql_database" and a mongo database called "neems".

For all usages of the command line see the command line arguments documentation below:

```
usage: migrate_neems_to_sql.py [-h] [--verbose] [--drop] [--skip_bad_triples] [--batch_size BATCH_SIZE] [--dump_data_stats] [--sql_username SQL_USERNAME]
                               [--sql_password SQL_PASSWORD] [--sql_database SQL_DATABASE] [--sql_host SQL_HOST] [--sql_uri SQL_URI] [--mongo_username MONGO_USERNAME]
                               [--mongo_password MONGO_PASSWORD] [--mongo_database MONGO_DATABASE] [--mongo_host MONGO_HOST] [--mongo_port MONGO_PORT] [--mongo_uri MONGO_URI]

optional arguments:
  -h, --help            show this help message and exit
  --verbose, -v         Print various intermediate outputs for debugging
  --drop, -d            Drop the tables that will be inserted first
  --skip_bad_triples, -sbt
                        Skip bad triples
  --batch_size BATCH_SIZE, -bs BATCH_SIZE
                        Batch size (number of neems per batch) for uploading data to the database, this is important for memory issues, if you encounter a memory problem try
                        to reduce that number
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
