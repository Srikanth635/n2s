import os
from sqlalchemy import create_engine, text

sql_url = os.environ['LOCAL_SQL_URL']
engine = create_engine(sql_url)

# get a connection
conn = engine.connect()
curr = conn.execute(text("""SELECT s, p, o, neem_id
FROM test.triples
ORDER BY _id;"""))
for v in curr:
    # print(type(v[0]))
    pass
    # break
conn.commit()
conn.close()