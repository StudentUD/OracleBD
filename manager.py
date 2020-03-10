# Manual https://cx-oracle.readthedocs.io/en/latest/user_guide/sql_execution.html
# Controlador de Oracle
import cx_Oracle
import pandas as pd

# Direccion de acceso
url_conexion= 'app/flask@xepdb1'

# Metodos que verifica el estado de conexion

def show_error(e):
    errorObj, = e.args
    return  (errorObj.message, errorObj.code)

def show_cur(curs):
    #print("Resultado")
    for e in curs:
        #print(e)
        e

def verify_satus():
    try:
        con = cx_Oracle.connect(url_conexion)
        v = con.version
        con.close()
    except cx_Oracle.DatabaseError as e: 
        v = show_error(e)
    return "Estado actual de la BD: " + str(v)  

# Metodo verifica usuario y contraseña
def test(request):
    #print("URL:"+request.url)
    #print("Método:"+request.method)
    for item,value in request.headers.items():
        "{}:{}".format(item,value)
        #print("información en formularios (POST):")
    for item,value in request.form.items():
        "{}:{}".format(item,value)
        #print("información en URL (GET)")
    for item,value in request.args.items():
        "{}:{}".format(item,value)
        #print("Ficheros:")
    for item,value in request.files.items():
        "{}:{}".format(item,value)

# Metodo que recibe las consultas y returna el resultado
def execute_sentence(sentencia,tupla=()):
    listRes=[]
    listCol=[]
    try:
        con = cx_Oracle.connect(url_conexion)
        cur = con.cursor()
        print(sentencia)
        cur.execute(sentencia,tupla)
        #cur.description hace dta about each column : list
        listCol=[e[0] for e in cur.description]
        listRes=list(cur)

        if listRes==[]:
            print("Any response")

        cur.close()
        con.close()
        show_cur(listCol)
        show_cur(listRes)
    except cx_Oracle.DatabaseError as e:
        print("Error de Base de datos", e) 
        v = show_error(e)
    return {"columns": listCol, "rows": listRes}


def verify_login(user,passw):
   return execute_sentence("select e.first_name, e.last_name, et.title from s_emp e, s_emp_title et where userid  = :1 and id = :2 and e.id =et.emp_id and rownum = 1 order by consec desc",(user,passw))

def test_html(request):
    cad=""
    cad+="URL:"+request.url+"<br/>"
    cad+="Método:"+request.method+"<br/>"
    cad+="header:<br/>"
    for item,value in request.headers.items():
        cad+="{}:{}<br/>".format(item,value)    
    cad+="información en formularios (POST):<br/>"
    for item,value in request.form.items():
        cad+="{}:{}<br/>".format(item,value)
    cad+="información en URL (GET):<br/>"
    for item,value in request.args.items():
        cad+="{}:{}<br/>".format(item,value)    
    cad+="Ficheros:<br/>"
    for item,value in request.files.items():
        cad+="{}:{}<br/>".format(item,value)
    # print(cad)

def get_client_by_phone(phone):
    return execute_sentence(' select id, name, phone from s_customer where phone=:1',(phone))

def get_clients_lists():
    return execute_sentence('select c.id, c.name from s_customer c',())


def get_list_of_products():
    return execute_sentence('select p.id as Codigo, p.name as Nombre, p.short_desc as Descripcion, p.suggested_whlsl_price as Precio, i.amount_in_stock as Cantidad_Disponble, w.city as Ciudad, w.state as Estado from s_product p, s_inventory i, s_warehouse w where p.id=i.product_id and i.warehouse_id=w.id')

def get_inventary():
    return execute_sentence('SELECT w.country AS Pais, w.state as Estado, r.name as Region, w.address as Direccion, i.amount_in_stock as N_Stock, i.reorder_point as Pto_Pedido, i.max_in_stock as Max_Stock, i.out_of_stock_explanation as Agotado, i.restock_date as F_Reposicion FROM s_warehouse w, s_region r, s_inventory i WHERE w.region_id = r.id AND i.warehouse_id = w.id')

def asignar_rol(rv):
    if "s" in ''.join(rv[0]) :
        print("t")