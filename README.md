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

The usage is straight forward, if you have your new neems on a MongoDB, and you have the credentials for access to the MongoDB and the MariaDB, then you are good to go. The only file you need to run is "migrate_neems_to_sql.py", for example the following command uses the sql database (always required), sql uri and the mongo uri instead of providing username, password, and hostname, arguments, this is for providing more flexibility:

```
python migrate_neems_to_sql.py -sd my_sql_database --sql_uri "mysql+pymysql://username:password@localhost/my_sql_database?charset=utf8mb4" --mongo_uri "mongodb://username:password@localhost:27017/neems"
```

Another way is using the specific arguments:

```
python migrate_neems_to_sql.py -su "sql_username" -sp "sql_password" -sh "localhost" -sd "my_sql_database" -mu "mongo_username" -mp "mongo_password" -md "neems" -mh "localhost" -mpt 27017
```

The above commands assumes that you have an sql database called "my_sql_database" and a mongo database called "neems".

An important argument to mention is the ```--neem_filters_yaml``` which allow you to filter out specific neems by adding some conditions on the meta data of the neems in a yaml file that you pass through to this argument, an example yaml file is available in the root of this repositroy named ```my_neem_filters.yaml```.

If all is good you should see something like this:

![alt text](resources/loading_bar_all_step.png)

For all usages of the command line see the command line arguments documentation below:

```
usage: migrate_neems_to_sql.py [-h] [--drop] [--skip_bad_triples] [--allow_increasing_sz] [--allow_text_indexing]
                               [--max_null_percentage MAX_NULL_PERCENTAGE] [--batch_size BATCH_SIZE] [--num_batches NUM_BATCHES]
                               [--start_batch START_BATCH] [--dump_data_stats] [--sql_username SQL_USERNAME] [--sql_password SQL_PASSWORD]
                               --sql_database SQL_DATABASE [--sql_host SQL_HOST] [--sql_uri SQL_URI] [--mongo_username MONGO_USERNAME]
                               [--mongo_password MONGO_PASSWORD] [--mongo_database MONGO_DATABASE] [--mongo_host MONGO_HOST] [--mongo_port MONGO_PORT]
                               [--mongo_uri MONGO_URI] [--log_level LOG_LEVEL] [--neem_filters_yaml NEEM_FILTERS_YAML]

optional arguments:
  -h, --help            show this help message and exit
  --drop, -d            Drop the tables that will be inserted first
  --skip_bad_triples, -sbt
                        Skip triples that are missing one of subject, predicate or object
  --allow_increasing_sz, -ais
                        Allow increasing the size of the original data type of a column
  --allow_text_indexing, -ati
                        Allow indexing text type columns
  --max_null_percentage MAX_NULL_PERCENTAGE, -mnp MAX_NULL_PERCENTAGE
                        Maximum percentage of null values allowed in a column otherwise it will be put in a separate table
  --batch_size BATCH_SIZE, -bs BATCH_SIZE
                        Batch size (number of neems per batch) for uploading data to the database, this is important for memory issues, if you
                        encounter a memory problem try to reduce that number
  --num_batches NUM_BATCHES, -nb NUM_BATCHES
                        Number of batches to upload the data to the database
  --start_batch START_BATCH, -sb START_BATCH
                        Start uploading from this batch
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
  --log_level LOG_LEVEL, -logl LOG_LEVEL
                        Log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --neem_filters_yaml NEEM_FILTERS_YAML, -nfy NEEM_FILTERS_YAML
                        YAML file containing the neem filters
```

## The SQL Schema

So the schema can be summarized as follows:

- The neems meta data are stored in the "neems" table, and any table that is prefixed with "neem_", they look like this:

![alt text](resources/neems_meta_data.png)

- Each predicate is a table with subject, object, and neem_id columns, and the table name is the predicate name, prefixed with the ontologoy prefix, the subject and object columns are postfixed with '_s' and '_o' respectively:

![alt text](resources/predicate_tables.png)

- The tf data is linked with the triples through a table called "tf_header_soma_hasIntervalBegin", it was constructed by comparing tf_header timestamp with soma_hasIntervalBegin, and soma_hasIntervalEnd predicates:

![alt text](resources/schema_illustration.png)

## Sample Queries For Common Views

The common_queries folder contains some sample queries for common views, for example the following query shows the linked tf and triples:


```
Select hib.o, hie.o, th.stamp, tf.neem_id
From tf_header_soma_hasIntervalBegin as tf_tr
INNER JOIN soma_hasIntervalBegin as hib
ON hib.ID = tf_tr.soma_hasIntervalBegin_ID
INNER JOIN soma_hasIntervalEnd hie
ON hie.ID = tf_tr.soma_hasIntervalEnd_ID
Inner Join tf_header th on tf_tr.tf_header_ID = th.ID
INNER JOIN tf
ON tf.ID = tf_tr.tf_header_ID;
```

![alt text](resources/result_of_tf_and_triples.png)


