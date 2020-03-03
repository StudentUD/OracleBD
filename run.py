from flask import Flask,render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Api
from forms import SignupForm, PostForm

import os, cx_Oracle


app = Flask(__name__)
api = Api(app)
"""app.config['SECRET_KEY'] = '7110c8ae51a4b5af97be6534caef90e4bb9bdcb3380af008f90b23a5d1616bf319bc298105da20fe'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:testing@localhost:5432/miniblog'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
login_manager = LoginManager(app)
login_manager.login_view = "login"
db = SQLAlchemy(app)



db_user = os.environ.get('DBAAS_USER_NAME', 'SYSTEM')
db_password = os.environ.get('DBAAS_USER_PASSWORD', 'Welcome1_')
db_connect = os.environ.get('DBAAS_DEFAULT_CONNECT_DESCRIPTOR', "localhost:1521/ORCL")
service_port = port=os.environ.get('PORT', '8080')"""

posts = []

@app.route("/")
def index():
    """ connection = cx_Oracle.connect(db_user, db_password, db_connect)
    cur = connection.cursor()
    cur.execute("SELECT 'Hello, World from Oracle DB!' FROM DUAL")
    col = cur.fetchone()[0]
    cur.close()
    connection.close()"""
    return render_template("index.html", posts=posts)

@app.route("/p/<string:slug>/")
def show_post(slug):
    return "Mostrando el post {}".format(slug)

@app.route("/admin/post/", methods=['GET', 'POST'], defaults={'post_id': None})
@app.route("/admin/post/<int:post_id>/", methods=['GET', 'POST'])
def post_form(post_id):
    form = PostForm()
    if form.validate_on_submit():
        title = form.title.data
        title_slug = form.title_slug.data
        content = form.content.data
        post = {'title': title, 'title_slug': title_slug, 'content': content}
        posts.append(post)
        return redirect(url_for('index'))
    return render_template("admin/post_form.html", form=form)

@app.route("/signup/", methods=["GET", "POST"])
def show_signup_form():
    form = SignupForm()
    if form.validate_on_submit():
        name = form.name.data
        email = form.email.data
        password = form.password.data
        next = request.args.get('next', None)
        if next:
            return redirect(next)
        return redirect(url_for('index'))
    return render_template("signup_form.html", form=form)

if __name__ == '__main__':
    app.run(debug = True, port =8000)