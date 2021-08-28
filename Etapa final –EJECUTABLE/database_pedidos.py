import mysql.connector
class MyDatabase:
   
    def open_connection(self):
        
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_proyecto")
        
        return connection

    def insert_db(self, pedido, nombre,direccion,telefono, forma):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_pedidos(PEDIDO, NOMBRE,DIRECCION, TELEFONO, FORMA_PAGO) VALUES (%s,%s,%s,%s,%s)"
        data = (pedido, nombre,direccion, telefono,forma)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()