# Manual https://cx-oracle.readthedocs.io/en/latest/user_guide/sql_execution.html

import cx_Oracle
import pandas as pd

url_conexion= 'app/flask@xepdb1'
def verify_satus():
    try:
        con = cx_Oracle.connect(url_conexion)
        v = con.version
        con.close()
    except cx_Oracle.DatabaseError as e: 
        v = show_error(e)
    return "Se establecio conexion con: " + str(v)  

def verify_login(user,passw):
    return execute_sentence("select first_name, last_name,title from s_emp where userid = :1 and id = :2",(user,passw))



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
    print(cad)

def test(request):
    print("URL:"+request.url)
    print("Método:"+request.method)
    print("header")
    for item,value in request.headers.items():
        print("{}:{}".format(item,value))    
    print("información en formularios (POST):")
    for item,value in request.form.items():
        print("{}:{}".format(item,value))
    print("información en URL (GET)")
    for item,value in request.args.items():
        print("{}:{}".format(item,value))   
    print("Ficheros:")
    for item,value in request.files.items():
        print("{}:{}".format(item,value))

def execute_sentence(sentencia,tupla=()):
    listR=[]
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
        print("Error de BAse de datos") 
        v = show_error(e)
    return {"columns": listCol, "rows": listRes} 

def show_error(e):
    errorObj, = e.args
    return  (errorObj.message, errorObj.code)

def show_cur(curs):
    print("Resultado")
    for e in curs:
        print(e)



def get_list_of_products():
    return execute_sentence('select p.id as Codigo, p.name as Nombre, p.short_desc as Descripcion, p.suggested_whlsl_price as Precio, i.amount_in_stock as Cantidad_Disponble, w.city as Ciudad, w.state as Estado from s_product p, s_inventory i, s_warehouse w where p.id=i.product_id and i.warehouse_id=w.id')