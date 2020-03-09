from flask import Flask,render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Api
from forms import SignupForm, PostForm
#from flask_login import login_required, current_user
import manager

# oracle nombre de host localhost 
# pprt 1521
# sid xe

app = Flask(__name__)
api = Api(app)

# Ruta inicial
@app.route("/")
def index():
    return render_template("index.html")

# Verifica el estado actual de la  BD
@app.route("/status")
def conexion():
    return manager.verify_satus() 

# Gestiona el login y genera URL de los diferentes cargos
@app.route("/login", methods=["POST"])
def login():
    error = None
    manager.test(request)
    if request.method == 'POST': 
        d = manager.verify_login(request.form['user'], request.form['password'])
        if d['rows']!=[]:
            e = d['rows'][0]
            first_name,last_name,title=e   
            page = generate_route(title)
            return redirect(url_for(page))
        else:
            error = 'Verifique usuario o contrasenia '
    return render_template('/index.html',error=error)

# Cargos
## Representante de ventas
@app.route("/sales_representative", methods=["GET"])
def sales_representative():
    data =  manager.get_list_of_products()
    return render_template('/roles/sales_representative.html', table = data, opciones=["Producto","Cliente"])

## Administrador de bodega
@app.route("/warehouse_manager")
def warehouse_manager():
    data = manager.get_inventary()
    return render_template('/roles/warehouse_manager.html', table = data)

## Vicepresidente de recursos Humanos
@app.route("/vprh", methods=["GET"])
def vprh():
    return render_template('.html')

## Administrador de usuario
@app.route("/admin_user", methods=["GET"])
def adminUser():
    return render_template('.html')

##
@app.route("/sales", methods=["GET"])
def sales():
    item_list =  manager.execute_sentence("select * from s_item")
    return jsonify(item_list)
    
# Registro
@app.route("/registro")
def registro():
    return render_template('/registro.html')


# Funciones
def generate_route(u):
    return u.lower().strip().replace(" ","_")

# Main
if __name__ == '__main__':
    app.run(debug = True, port =8000)