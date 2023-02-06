import pymysql
import os


# Create a connection object
# IP address of the MySQL database server
Host = "localhost" 
  
# User name of the database server
User = "newuser"       
  
# Password for the database user
Password = os.environ['MYSQL_USER_PASS']           
  
conn  = pymysql.connect(host=Host, user=User, password=Password)
  
# Create a cursor object
cur  = conn.cursor()
  
# creating database 
cur.execute("DROP DATABASE NEWDATABASE") 
  
cur.execute("SHOW DATABASES")
databaseList = cur.fetchall()
  
for database in databaseList:
  print(database)
    
conn.close()