import pymysql
import os


# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# User name of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
conn  = pymysql.connect(host=Host, user=User, password=Password, database='test')
  
# Create a cursor object
cur  = conn.cursor()
  
# cur.execute("SHOW DATABASES")
# databaseList = cur.fetchall()
  
# for database in databaseList:
#   print(database)

cur.execute("DROP TABLE IF EXISTS PRODUCT") 
query = """CREATE TABLE transform ( 
         translation  CHAR(20) NOT NULL, 
         price  int(10), 
         PRODUCT_TYPE VARCHAR(64) ) """
  
# To execute the SQL query
cur.execute(query)   
  
# To commit the changes
conn.commit()
  
conn.close()