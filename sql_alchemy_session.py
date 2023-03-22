import os
from sqlalchemy import create_engine, Column, Integer, String, MetaData, Table, ForeignKey, insert, select, update, delete, text

# create tables and upload data to the sql database
sql_url = os.environ["LOCAL_SQL_URL2"]
# engine = create_engine("mariadb+mariadbconnector://newuser:password@localhosttest2?charset=utf8mb4")
engine = create_engine(sql_url)

# Create a metadata object
metadata_obj = MetaData()

user_table = Table(
    "user_account",
    metadata_obj,
    Column("id", Integer, primary_key=True),
    Column("name", String(30)),
    Column("fullname", String(30)),
)
address_table = Table(
    "address",
    metadata_obj,
    Column("id", Integer, primary_key=True),
    Column("user_id", ForeignKey("user_account.id"), nullable=False),
    Column("email_address", String(30), nullable=False),
)

metadata_obj.create_all(engine)

# stmt = insert(user_table).values(name="spongebob", fullname="Spongebob Squarepants",)

# with engine.connect() as conn:
#     result = conn.execute(stmt)
#     conn.commit()

# select data from the sql database
stmt = select(text("user_account.id")).select_from(text("user_account")).where(text("user_account.name='spongebob'"))
with engine.connect() as conn:
    result = conn.execute(stmt)
    for row in result:
        print(row)