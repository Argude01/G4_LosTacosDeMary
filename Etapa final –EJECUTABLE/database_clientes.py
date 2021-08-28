
import mysql.connector
class MyDatabase:
   
    def open_connection(self):
        
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_proyecto")
        
        return connection

    def insert_db(self, nombre,telefono):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_clientes(NOMBRE, TELEFONO) VALUES (%s,%s)"
        data = (nombre, telefono)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()