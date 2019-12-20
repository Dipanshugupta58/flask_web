from flask import Flask, render_template,request,session
from flask_sqlalchemy import SQLAlchemy
import json
import os
import math
from werkzeug.utils import secure_filename



with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = params['file_location']
SESSION_TYPE = 'redis'
app.secret_key = 'super-secret-key'

#app.config['UPLOAD_FOLDER'] = params['file_location']
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['production_ur']

db = SQLAlchemy(app)

'''
    ##########################################################
        For Adding Clint Information  Data
    ###########################################################
'''

class Clients(db.Model):
    '''  sn	name	feedback	location	slug	date	img '''

    sn = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), )
    feedback = db.Column(db.String(80))
    location = db.Column(db.String(80))
    date = db.Column(db.String(50))
    img =db.Column(db.String(50))

'''
    ##########################################################
        For Adding Products  Data
    ###########################################################
'''

class Product(db.Model):
    ''' sn,category,name,image '''

    sn = db.Column(db.Integer, primary_key=True)
    category = db.Column(db.String(100))
    sub_cat = db.Column(db.String(100))
    name = db.Column(db.String(100), )
    image = db.Column(db.String())

'''
    ##########################################################
        For Feedback Data
    ###########################################################
'''
class Feedback(db.Model):
    '''
        	sno 	name 	email 	subject 	msg
    '''
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50) )
    email = db.Column(db.String(100))
    subject = db.Column(db.String(100))
    msg = db.Column(db.String(1000))


@app.route("/")
def home():
    product = Product.query.filter_by().all()[0:9]
    client = Clients.query.all()[0:3]
    return render_template("index.html",params=params,client=client,product=product)

@app.route("/products")
def products():
    product = Product.query.filter_by().all() [0:9]
    return render_template("Products.html",params=params,product=product)

@app.route("/sub_products/<string:data>",methods=['GET'])
def sub_products(data):
    product = Product.query.filter_by(category=data)[1:]
    #product = Products.query.all()
    return render_template("sub_products.html",params=params,product=product)

@app.route("/sub_subproducts/<string:data>",methods=['GET'])
def sub_subproducts(data):
    count = 0
    product = Product.query.filter_by(category=data)
    #product = Products.query.all()
    return render_template("sub_subproduct.html",params=params,product=product,count=count)

@app.route("/solution")
def solution():
    return render_template("solution.html",params=params)

@app.route("/our_clients")
def our_clients():
    '''Pagination'''
    client = Clients.query.all()[0:4]
    #client = Clients.query.filter_by().all()
    #last = math.ceil(len(client)/int(params['home_numbers_of_post']))
    #page = request.args.get('page')
    #if(not str(page).isnumeric()):
    #    page = 1
    #page =int(page)
    #client = client[(page-1)*int(params['home_numbers_of_post']): (page-1)*int(params['home_numbers_of_post']) + int(params['home_numbers_of_post'])]
    #if(page == 1):
    #    prev ='#'
    #    next = "/our_clients?page" + str(page + 1)
    #elif(page == last):
    #    prev = "/our_clients?page" + str(page - 1)
    #    next = '#'
    #else:
    #    prev = "/our_clients?page" + str(page - 1)
    #    next = "/our_clients?page" + str(page + 1)

    #client = Clients.query.filter_by().all()
    #return render_template("our_clients.html",params=params,client=client,prev=prev,next=next)
    return render_template("our_clients.html",params=params,client=client)


@app.route("/about")
def about():
    return render_template("about.html",params=params)

'''
    ##########################################################
        For Creating Dashboard
    ###########################################################
'''

@app.route("/dashboard", methods = ['GET', 'POST'])
def dashboard():

    if ('user' in session and session['user'] == params['admin_user'] ):

        return render_template("insert_client.html", params=params)

    if (request.method == 'POST'):
        user=request.form.get('username')
        password = request.form.get('password')
        if user == params['admin_user'] and password == params['asmin_password']:
            '''SET SESSION VARIABLE'''
            session['user'] = user
            return render_template("insert_client.html", params=params)
        else:
            return render_template("login.html")
    else:
        return render_template("login.html")

@app.route("/client_data", methods = ['GET', 'POST'])
def client_data():
    """Insert Client Information"""
    if ('user' in session and session['user'] == params['admin_user']):
        if(request.method=='POST'):
            '''
               sn 	name 	feedback 	location 	slug 	date 	img
            '''

            client_name = request.form.get('client_name')
            client_feedback = request.form.get('client_feedback')
            client_location = request.form.get('client_location')
            client_date = request.form.get('client_data')

            file = request.files['inputFile']
            #file.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(file.filename)))
            # file.save(secure_filename(file.filename))
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))

            ins_client = Clients(name=client_name, feedback=client_feedback, location=client_location,img=filename)
            db.session.add(ins_client)
            db.session.commit()
        return render_template("insert_client.html", params=params)
    else:
        return render_template("login.html")

#Display All clients Recourd
@app.route("/disp_client")
def disp_client():
    if ('user' in session and session['user'] == params['admin_user']):
        client = Clients.query.all()
        return render_template("client_records.html",params=params,client=client)
    return render_template("login.html")

@app.route("/feedback",methods = ['GET', 'POST'])
def feedback():
    if ('user' in session and session['user'] == params['admin_user']):
        if(request.method == 'POST'):
            name = request.form.get('name')
            Email = request.form.get('email')
            subject = request.form.get('subject')
            Message = request.form.get('message')
            ins_feedback = Feedback(name=name, email=Email, subject=subject, msg=Message)
            db.session.add(ins_feedback)
            db.session.commit()
        return "<script>alert('Feedback has been set Thanku..........||||')</script>"
    else:
        return render_template("login.html")


@app.route("/disp_feedback")
def disp_feedback():
    if ('user' in session and session['user'] == params['admin_user']):
        feedback = Feedback.query.all()
        return render_template("display_feedback.html",params=params,feedback=feedback)
    return render_template("login.html")
@app.route("/delete/<string:data>", methods = ['GET', 'POST'])
def delete(data):
    if ('user' in session and session['user'] == params['admin_user']):
        feedback_delete = Feedback.query.filter_by(sno=data).first()
        db.session.delete(feedback_delete)
        db.session.commit()
        feedback = Feedback.query.all()
        return render_template("display_feedback.html", params=params, feedback=feedback)
    return render_template("login.html")
@app.route("/delete_client/<string:data>", methods = ['GET', 'POST'])
def delete_client(data):
    if ('user' in session and session['user'] == params['admin_user']):
        client_delete = Clients.query.filter_by(sn=data).first()
        db.session.delete(client_delete)
        db.session.commit()
        client = Clients.query.all()
        return render_template("client_records.html", params=params, client=client)
    return render_template("login.html")
@app.route('/logout')
def logout():
   # remove the username from the session if it is there
   session.pop('user', None)
   return render_template("login.html")
app.run(debug=True)