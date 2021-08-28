 
import tkinter as tk
from tkinter import*
from tkinter import messagebox
import tkinter
from PIL import ImageTk, Image
import database_clientes

venta=tk.Tk()
venta.title("Los Tacos de Mary")
venta.resizable(False,False)
venta.geometry("475x550+500+200")
eti2=Label( venta, text="RESTAURANTE LOS TACOS DE MARY" , font=("arial black", 13), bg="BLUE", fg="orange", width="40",height="2")
eti2.place(x=2,y=10)
my_image = ImageTk.PhotoImage(Image.open("principal.png"))
my_label = Label(venta, image=my_image, width=200, height=150)
my_label.place(x="100", y="70")
eti0=Label( venta, text="BIENVENIDO AL RESTAURANTE" , font=("arial black", 13), fg="black", width="40",height="2")
eti0.place(x=2,y=230) 
eti=Label( venta, text="LOS TACOS DE MARY" , font=("arial black", 13), fg="black", width="40",height="2")
eti.place(x=2,y=280)
et=Label( venta, text="Estos son nuestros horios de trabajo:" , font=("calibria", 13), fg="black", width="40",height="2")
et.place(x=2,y=320)
e=Label( venta, text="De Lunes a Viernes:" , font=("calibria", 9), fg="black", width="60",height="2")
e.place(x=2,y=360)
a=Label( venta, text="7:00 A.M  a 9:00 PM" , font=("calibria", 9), fg="black", width="60",height="2")
a.place(x=2,y=400)


                
def hola():
    venta.withdraw() # cierra ventana vieja si condicion se cumple

    ventana=tkinter.Toplevel() 
    from PIL import ImageTk, Image
    import tkinter as tk
    import webbrowser
    from tkinter import messagebox

    ventana.title("Los Tacos de Mary")
    ventana.resizable(False,False)
    ventana.geometry("475x450+500+200")
                        
    ventana.config(bg="red")

    pagina=("https://edwin2032.github.io/Los_Tacos_De_Mary/")
    eti2=Label( ventana, text="Bienvenid@s a la aplicacion de servicio a domiciolio ", font=("Cambria", 13), bg="BLUE", fg="orange", width="52",height="2")
    eti2.place(x=2,y=30)


    canvas1 = tk.Canvas(ventana, width = 400, height = 300,bg="cyan").place(x=40,y=120)
    texto="Rellenar los Siguentes Datos:"  
    eti=Label(ventana, text=texto,fg="orange", font=("Arial"))
    eti.place(x=45,y=130)
    texto="¿Cual es tu nombre?:"  
    eti=Label(ventana, text=texto,fg="orange", font=("Arial"))
    eti.place(x=80,y=180)
    entry1 = tk.Entry (ventana) 
    entry1.place(x=260, y=180)
    texto="¿Numero De Telefono?:"  
    eti=Label(ventana, text=texto,fg="orange", font=("Arial"))
    eti.place(x=60,y=250)
    entry2 = tk.Entry (ventana) 
    entry2.place(x=260, y=250)
    texto="¿cual escula estudias ?:"  
    eti=Label(ventana, text=texto,fg="orange", font=("Arial"))

    nombre=StringVar()
    telefono=StringVar()

    def msg():

        nombre = entry1.get()
        telefono = entry2.get()
        
        # creando un objeto de la Base de datos "MyDatabase", para acceder a la función "insert_db"
        demo_db = database_clientes.MyDatabase()
        # ejecutando la función "insert_db" y enviando las variables como parámetros
        demo_db.insert_db(nombre, telefono)
        respuesta = messagebox.askyesno(message="¿Los va a llevar una pagina web donde muestra menú?", title="Menú")
        if respuesta:
            messagebox.showinfo(message="Entrando a la pagina web", title="Menú")
        else:
            messagebox.showinfo(message="no estuvo deacuerdo a entrar a pagina web", title="cancelacion")
        if respuesta==respuesta :
            webbrowser.open(pagina)
            
        else:
            print("cliente no estuvo deacuardo")
    submit_btn = Button(ventana, text="Menú",command=msg,width="30",height="2",bg="pink")
    submit_btn.place(x=120, y=380)
    ventana.mainloop()
submit = Button(venta, text="REGISTRO Y MENÚ",command=hola,width="20",height="2",bg="#FE9520")
submit.place(x=300, y=500)
venta.mainloop()
