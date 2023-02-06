import pymysql
import os
from pymysql import OperationalError


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

def executeScriptsFromFile(filename, cursor):
    # Open and read the file as a single buffer
    fd = open(filename, 'r')
    sqlFile = fd.read()
    fd.close()

    # all SQL commands (split on ';')
    sqlCommands = sqlFile.split(';')

    # Execute every command from the input file
    i = 0
    for command in sqlCommands:
        if i == 0:
            i +=1
            continue
        # This will skip and report errors
        # For example, if the tables do not yet exist, this will skip over
        # the DROP TABLE commands
        print(command.strip())
        break
        # try:
        #     cursor.execute(command)
        # except OperationalError as msg:
        #     print("Command skipped: ", msg)

executeScriptsFromFile(os.path.join(os.getcwd(),"neems/tf_template.sql"), cur)
# cur.execute("DROP TABLE IF EXISTS PRODUCT") 
# query = """CREATE TABLE transform ( 
#          translation  CHAR(20) NOT NULL, 
#          price  int(10), 
#          PRODUCT_TYPE VARCHAR(64) ) """
  
# # To execute the SQL query
# cur.execute(query)   
  
# # To commit the changes
# conn.commit()
  
conn.close()