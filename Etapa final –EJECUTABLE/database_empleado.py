import mysql.connector
class MyDatabase:
   
    def open_connection(self):
        
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_proyecto")
        
        return connection

    def insert_db(self, nombre, apellido, direccion, telefono, rtn, cuenta):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_empleados(NOMBRE, APELLIDO, DIRECCION,TELEFONO,RTN,CUENTA_BANCARIA) VALUES (%s,%s,%s,%s,%s,%s)"
        data = (nombre,apellido, direccion, telefono,rtn, cuenta)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()