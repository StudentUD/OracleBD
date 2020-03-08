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

@app.route("/status")
def conexion():
    return manager.verify_satus() 

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/sales_representative", methods=["GET"])
def sales_representative():
    data=  manager.get_list_of_products()
    return render_template('/admin/ordenes/sales_representative.html', table = data, opciones=["Producto","Cliente"])
    

@app.route("/sales", methods=["GET"])
def sales():
    item_list =  manager.execute_sentence("select * from s_item")
    return jsonify(item_list)
    
@app.route("/login", methods=["GET", "POST"])
def login():
    error= None
    manager.test(request)
    if request.method == 'POST': 
        l = manager.verify_login(request.form['user'], request.form['password'])
        if l!=[]:
            first_name,last_name,page=l[0]
            page = generate_route(page)
            print(page)
            mesage={"fn":first_name}
            return redirect(url_for(page,mes=mesage))
        else:
            error = 'Verifique usuario o contrasenia '
    return render_template('/index.html',error=error)


def generate_route(u):
    return u.lower().strip().replace(" ","_")


if __name__ == '__main__':
    app.run(debug = True, port =8000)