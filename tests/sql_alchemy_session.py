import os
from sqlalchemy import create_engine, Column, Integer, String, MetaData, Table, ForeignKey, insert, select, update, delete, text


def get_id_from_sql(table_name:str, col_value_pairs:dict):
        sql_cmd = f"SELECT ID FROM {table_name} WHERE "
        for i, (k, v) in enumerate(col_value_pairs.items()):
            sql_cmd += f"{k} = '{v}'"
            if i != len(col_value_pairs)-1:
                sql_cmd += ' AND '
            else:
                sql_cmd += ';'
        with engine.connect() as conn:
            result = conn.execute(text(sql_cmd))
            result = result.fetchall()
            result = [x[0] for x in result]
        return result


def get_max_id_from_sql(table_name:str, col_name='ID'):
    sql_cmd = f"SELECT MAX({col_name}) FROM {table_name};"
    with engine.connect() as conn:
        result = conn.execute(text(sql_cmd))
        result = result.fetchall()
        result = [x[0] for x in result]
    return result


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

print(get_id_from_sql('user_account', {'name': 'spongebob'}))
print(get_max_id_from_sql('user_account'))
exit()
# select data from the sql database
stmt = select(text("user_account.id")).select_from(text("user_account")).where(text("user_account.name='spongebob'"))
stmt =text("""SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = N'test'""")
# stmt = select(text("TABLE_NAME, COLUMN_NAME")).select_from(text("INFORMATION_SCHEMA.COLUMNS")).where(text("TABLE_SCHEMA = N'test'"))
with engine.connect() as conn:
    result = conn.execute(stmt)
    meta_data = {}
    if result.rowcount == 0:
        print("No data found")
    else:
        print(result.fetchall())
        # for row in result:
        #     if row[0] not in meta_data:
        #             meta_data[row[0]] = []
        #     if row[1] != 'ID':
        #         meta_data[row[0]].append(row[1])
        # print(result.rowcount, "row(s) found")
        # print(meta_data)