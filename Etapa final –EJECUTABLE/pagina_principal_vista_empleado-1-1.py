from tkinter import*
from tkinter import messagebox
import tkinter

root=Tk()

root.resizable(False, False)
root.geometry("479x502+500+200")
root.config(background="pink")


# Empleados


eti2=Label(root, text="Bienvenido Empleado", font=("cambria", 15), bg="#FE5001", fg="white", width="52",height="2")
eti2.place(x=2,y=20)

labelusuario=Label(root,text="Ingrese su usuario:")
labelusuario.place(x=1, y=80)
usuari=Entry(root)
usuari.place(x=105, y=80 )
labelcontrase=Label(root, text="Ingrese contraseña:")
labelcontrase.place(x=1, y=120)
contrase=Entry(root, show=("*"))
contrase.place(x=107, y=120)


usu="Empleado"
contr="1234"
def contraseñausuari():
    usa=str(usuari.get())
    cont=str(contrase.get())
    if usa==usu and cont==contr:
        pedido=StringVar()
        nombre=StringVar()
        direccion=StringVar()
        telefono=StringVar()
        forma=StringVar()
        import database_pedidos

        def pedido():
            pedido=entry_pedido.get()
            nombre = entry_nombre.get()
            direccion=entry_direccion.get()
            telefono = entry_telefono.get()
            forma=forma_pago.get()
            
            # creando un objeto de la Base de datos "MyDatabase", para acceder a la función "insert_db"
            demo_db = database_pedidos.MyDatabase()
            # ejecutando la función "insert_db" y enviando las variables como parámetros
            demo_db.insert_db(pedido,nombre,direccion, telefono,forma)

        framemensaj=Frame(root, width=300, height=50, bg="pink")
        framemensaj.place(x=120, y=140)  
        mensaj=Label(framemensaj,text="BIENVENIDO")
        mensaj.grid(row=0,column=1)
        usuario.delete(0,END)
        contraseña.delete(0,END)
        messagebox.showinfo(message="Bienvenido", title="Ingresaindo a sistema ")

        root.withdraw() # cierra ventana vieja si condicion se cumple

        ventana=tkinter.Toplevel() # sistema de empleados
        from tkinter import ttk 
        from PIL import ImageTk, Image

        ventana.title("PEDIDO")
        ventana.resizable(False, False)
        ventana.config(background="chocolate")
        ventana.geometry("450x680")

        label_pedidos=Label(ventana, text="PEDIDO", fg="white", bg="chocolate", font=("Calibri", "18","bold"), justify=CENTER)
        label_pedidos.pack()
        my_image = ImageTk.PhotoImage(Image.open("tacos.png"))
        my_label = Label(ventana, image=my_image, width=200, height=105)
        my_label.place(x="100", y="40")

        label_pedido=Label(ventana, text="PEDIDO: ", bg="chocolate", fg="black", font=("Calibri", "14"))
        label_pedido.place(x=5, y=250)
        entry_pedido=Entry(ventana, font=("Calibri", "14"))
        entry_pedido.place(x=90, y=250)

        label_nombre=Label(ventana, text="NOMBRE: ", bg="chocolate", fg="black", font=("Calibri", "14"))
        label_nombre.place(x=5, y=300)
        entry_nombre=Entry(ventana, font=("Calibri", "14"))
        entry_nombre.place(x=100, y=300)

        label_direccion=Label(ventana, text="DIRECCIÓN: ", bg="chocolate", fg="black", font=("Calibri", "14"))
        label_direccion.place(x=5, y=350)
        entry_direccion=Entry(ventana, font=("Calibri", "14"))
        entry_direccion.place(x=110, y=350)

        label_telefono=Label(ventana, text="TELÉFONO: ", bg="chocolate", fg="black", font=("Calibri", "14"))
        label_telefono.place(x=5, y=400)
        entry_telefono=Entry(ventana, font=("Calibri", "14"))
        entry_telefono.place(x=100, y=400)

        label_forma_de_pago=Label(ventana, text="FORMA DE PAGO: ", bg="chocolate", fg="black", font=("Calibri", "14"))
        label_forma_de_pago.place(x=5, y=450)
        n= tkinter.StringVar()
        forma_pago = ttk.Combobox(ventana, width = 27, textvariable = n)
        forma_pago["values"] = ("Tarjeta de credito", "Efectivo")
        forma_pago.place(x=150, y=450)
        

        boton_ordenar_pedido=Button(ventana,text="Solicitar pedido ", font=("Calibri", "14"), bg="SandyBrown", background="#FE9520", command=pedido)
        boton_ordenar_pedido.place(x=130,y=500)
        ventana.mainloop()



    else:
        usuario.delete(0,END)
        contraseña.delete(0,END)
        framemensaj=Frame(root, width=300, height=50, background= "red")
        framemensaj.place(x=120, y=140)
        mensaj=Label(framemensaj,text="VUELVE A INTENTARLO!")
        mensaj.grid(row=0, column=1)
        messagebox.showinfo(message="error compruebe el usuario o contraseña", title="Advertencia")
       
        
botonenviarusuari=Button(root, text="Entrar al sistema",command=contraseñausuari, background="#FE9520" )
botonenviarusuari.place(x=200, y=170)



# Los gerentes 



eti2=Label(root, text="Ingresar Empleado Solo Gerentes", font=("Cambria", 13),bg="#FE5001", fg="white", width="52",height="2")
eti2.place(x=2,y=230)

labelusuario=Label(root,text="Ingrese su usuario:")
labelusuario.place(x=1, y=280)
usuario=Entry(root)
usuario.place(x=105, y=280 )
labelcontraseña=Label(root, text="Ingrese contraseña:")
labelcontraseña.place(x=1, y=305)
contraseña=Entry(root,  show=("*"))
contraseña.place(x=107, y=305)
usua="gerente"
contra="1234"

def contraseñausuario():
    us=str(usuario.get())
    con=str(contraseña.get())
    

    if us==usua and con==contra:
        import database_empleado
        nombre=StringVar()
        apellido=StringVar()
        direccion=StringVar()
        telefono=StringVar()
        rtn=StringVar()
        cuenta=StringVar()
        def pedido():
            nombre=entry_nombre.get()
            apellido=entry_apellido.get()
            direccion=entry_direccion.get()
            telefono=entry_telefono.get()
            rtn=entry_rtn.get()
            cuenta=entry_cuenta.get()
            # creando un objeto de la Base de datos "MyDatabase", para acceder a la función "insert_db"
            demo_db = database_empleado.MyDatabase()
            # ejecutando la función "insert_db" y enviando las variables como parámetros
            demo_db.insert_db(nombre, apellido, direccion, telefono, rtn, cuenta)

        framemensaje=Frame(root, width=300, height=50, bg="pink")
        framemensaje.place(x=120, y=325)  
        mensaje=Label(framemensaje,text="BIENVENIDO")
        mensaje.grid(row=0,column=1)
        usuario.delete(0,END)
        contraseña.delete(0,END)
        messagebox.showinfo(message="Bienvenido", title="Envio")

        root.withdraw() # cierra ventana vieja si condicion se cumple

        win=tkinter.Toplevel() 
        from PIL import ImageTk, Image
        win.title("INGRESO DE EMPLEADOS")
        win.resizable(False,False)
        win.geometry("450x700")
        win.config(bg="#FF4500")

        label_empleados1=Label(win, text="Registro de Empleados", font=("Calibri","18", "bold"),bg="#FF4500", fg="white", justify=CENTER)
        label_empleados1.pack()
        my_image = ImageTk.PhotoImage(Image.open("empleado.png"))
        my_label = Label(win, image=my_image, width=300, height=200)
        my_label.place(x="100", y="40")

        label_nombre=Label(win,text="NOMBRE: ", font=("Calibri", "14"), bg="#FF4500")
        label_nombre.place(x=5,y=250)
        entry_nombre=Entry(win, font=("Calibri","14"))
        entry_nombre.place(x=90, y=250)

        label_apellido=Label(win,text="APELLIDO: ", font=("Calibri", "14"), bg="#FF4500")
        label_apellido.place(x=5,y=300)
        entry_apellido=Entry(win, font=("Calibri","14"))
        entry_apellido.place(x=100, y=300)

        label_edad=Label(win,text="EDAD: ", font=("Calibri", "14"), bg="#FF4500")
        label_edad.place(x=5,y=350)
        entry_edad=Entry(win, font=("Calibri","14"))
        entry_edad.place(x=70, y=350)

        label_direccion=Label(win,text="DIRECCIÓN: ", font=("Calibri", "14"), bg="#FF4500")
        label_direccion.place(x=5,y=400)
        entry_direccion=Entry(win, font=("Calibri","14"))
        entry_direccion.place(x=110, y=400)

        label_telefono=Label(win,text="TELEFONO: ", font=("Calibri", "14"), bg="#FF4500")
        label_telefono.place(x=5,y=450)
        entry_telefono=Entry(win, font=("Calibri","14"))
        entry_telefono.place(x=100, y=450)

        label_rtn=Label(win, text="RTN: ", bg="#FF4500", font=("Calibri", "14"))
        label_rtn.place(x=5, y=500)
        entry_rtn=Entry(win, font=("Calibri", "14"))
        entry_rtn.place(x=90, y=500)

        label_cuenta=Label(win, text="CUENTA: ", bg="#FF4500", font=("Calibri", "14"))
        label_cuenta.place(x=10, y=550)
        entry_cuenta=Entry(win, font=("Calibri", "14"))
        entry_cuenta.place(x=100, y=550)

        boton_agregar_info=Button(win,text="Ingresar empleado", font=("Calibri", "14"), bg="SandyBrown", background="#FE9520", command=pedido)
        boton_agregar_info.place(x=160,y=600)

        win.mainloop()
       

    else:
        usuario.delete(0,END)
        contraseña.delete(0,END)
        framemensaje=Frame(root, width=300, height=50, background="red")
        framemensaje.place(x=120, y=325)
        mensaje=Label(framemensaje,text="VUELVE A INTENTARLO!")
        mensaje.grid(row=0, column=1)
        messagebox.showinfo(message="NOTA IMPORTANTE: SI NO ERES GERENTE TEN CUIDADO QUEDA REGISTRADO EN UNA BASE DE DATOS Y PUEDE TENER CONSECUENCIAS", title="Advertencia")
def ir():
    root.withdraw() # cierra ventana vieja si condicion se cumple

    primer=tkinter.Toplevel() 
    primer.resizable(False, False)
    primer.geometry("600x502+500+200")
    primer.config(background="yellow")
    eti3=Label(primer, text="Horarios de Entrada a trabajar", font=("Cambria", 13), bg="BLUE", fg="orange", width="70",height="2")
    eti3.place(x=2,y=10)

    labelu=Label(primer, text="Lunes", font=("cambria", 13))
    labelu.place(x=70, y=80)
    abe=Label(primer, text="Martes",font=("cambria", 13))
    abe.place(x=170, y=80)
    l=Label(primer, text="Miercoles", font=("cambria", 13))
    l.place(x=270, y=80)
    abe=Label(primer, text="Jueves",font=("cambria", 13))
    abe.place(x=370, y=80)
    ul=Label(primer, text="viernes",font=("cambria", 13))
    ul.place(x=470, y=80)
    hora=Label(primer, text="6:00 A:M",font=("cambria", 9),background="red")
    hora.place(x=1, y=120)
    hora1=Label(primer, text="1:00 P:M",font=("cambria", 9),background="red")
    hora1.place(x=1, y=160)
    naza=Label(primer, text="NAZARETH",font=("cambria", 9),background="aqua")
    naza.place(x=70, y=120)
    edwin=Label(primer, text="EDWIN",font=("cambria", 9),background="aqua")
    edwin.place(x=170, y=120)
    angel=Label(primer, text="ANGEL",font=("cambria", 9),background="aqua")
    angel.place(x=270, y=120)
    gloria=Label(primer, text="GLORIA",font=("cambria", 9),background="aqua")
    gloria.place(x=370, y=120)
    jemmy=Label(primer, text="Jemmy",font=("cambria", 9),background="aqua")
    jemmy.place(x=470, y=120)
    edwin1=Label(primer, text="EDWIN",font=("cambria", 9),background="aqua")
    edwin1.place(x=70, y=160)
    jemmy1=Label(primer, text="Jemmy",font=("cambria", 9),background="aqua")
    jemmy1.place(x=270, y=160)
    gloria1=Label(primer, text="GLORIA",font=("cambria", 9),background="aqua")
    gloria1.place(x=370, y=160)
    naz1=Label(primer, text="NAZARETH",font=("cambria", 9),background="aqua")
    naz1.place(x=170, y=160)
    angel1=Label(primer, text="ANGEL",font=("cambria", 9),background="aqua")
    angel1.place(x=470, y=160)


    eti5=Label(primer, text="Horario de aseo ", font=("Cambria", 13), bg="BLUE", fg="orange", width="70",height="2")
    eti5.place(x=2,y=250)
    n=Label(primer, text="Lunes", font=("cambria", 13))
    n.place(x=70, y=300)
    q=Label(primer, text="Martes",font=("cambria", 13))
    q.place(x=170, y=300)
    p=Label(primer, text="Miercoles", font=("cambria", 13))
    p.place(x=270, y=300)
    e=Label(primer, text="Jueves",font=("cambria", 13))
    e.place(x=370, y=300)
    u=Label(primer, text="viernes",font=("cambria", 13))
    u.place(x=470, y=300)
    naza3=Label(primer, text="NAZARETH",font=("cambria", 9),background="aqua")
    naza3.place(x=70, y=340) 
    edwin3=Label(primer, text="EDWIN",font=("cambria", 9),background="aqua")
    edwin3.place(x=170, y=340) 
    gloria3=Label(primer, text="GLORIA",font=("cambria", 9),background="aqua")
    gloria3.place(x=270, y=340)
    jemmy3=Label(primer, text="JEMMY",font=("cambria", 9),background="aqua")
    jemmy3.place(x=370, y=340)  
    angel3=Label(primer, text="ANGEL",font=("cambria", 9),background="aqua")
    angel3.place(x=470, y=340)
    
    


        
botonenviarusuario=Button(root, text="Registrar Empleado",command=contraseñausuario , background="#FE9520")
botonenviarusuario.place(x=200, y=380)
botonenviarusua=Button(root, text="Horarios ",command=ir , background="#FE9520" )
botonenviarusua.place(x=400, y=470)
root.mainloop()
