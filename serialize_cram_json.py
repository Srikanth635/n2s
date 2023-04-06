from migrate_neems_to_sql import json_to_sql
from sqlalchemy import create_engine
import json
import os


if __name__ == '__main__':
    with open('task_tree.json', 'r') as f:
        data = json.load(f)
    sql_url = os.environ['LOCAL_SQL_URL3']
    engine = create_engine(sql_url)
    json_to_sql("cram", data, engine)