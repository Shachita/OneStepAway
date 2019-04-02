from flask import Flask, render_template, request, redirect, url_for, flash
from werkzeug.security import generate_password_hash, check_password_hash
from flask import Flask, session
from flask_sqlalchemy import SQLAlchemy

import os


app=Flask(__name__)
app.secret_key=os.urandom(24)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/onestepawaydb'

db=SQLAlchemy(app)
'''suyash'''

class User(db.Model):
    __tablename__='user'
    #(name, email, password, contact , service , address )
    name=db.Column(db.String(80), primary_key=True)
    emailid=db.Column(db.String(80),nullable=True)
    password=db.Column(db.String(120),nullable=True)
    contact=db.Column(db.String(80),nullable=True)
    service=db.Column(db.String(80),nullable=True)
    address=db.Column(db.String(80),nullable=True)

class Service(db.Model):
    __tablename__='service'
    #(name, email, password, contact , service , address )
    oname=db.Column(db.Integer, primary_key=True)
    bname=db.Column(db.String(80),nullable=True )
    oemailid=db.Column(db.String(80),nullable=True)
    opassword=db.Column(db.String(120),nullable=True)
    ocontact=db.Column(db.String(80),nullable=True)
    oservice=db.Column(db.String(80),nullable=True)
    oaddress=db.Column(db.String(80),nullable=True)
    odescribe=db.Column(db.String(80),nullable=True)
    olongitude=db.Column(db.Integer,nullable=True)
    olatitude=db.Column(db.Integer,nullable=True)
    imagename=db.Column(db.String(300))
    oimage=db.Column(db.LargeBinary)



@app.route("/register")
def register():
    return render_template("Registration.html")

@app.route("/")
def index():
    return redirect(url_for('home'))


'''Session control added'''
@app.route("/home")
def home():
    if 'username' in session:
        name=session['username']
        return render_template('home.html', name=name)
        
    else:
          
        return render_template('home.html') 

@app.route("/registeru",methods=['GET','POST'])
def registeru():
    if request.method=='POST':
        name=request.form.get('name', False) 
        emailid=request.form.get('email', False)
        password=request.form.get('pass', False)
        contact=request.form.get('phone', False)
        service=request.form.get('service', False)
        address=request.form.get('address', False)

        user = User.query.filter_by(emailid=emailid).first() # if this returns a user, then the email already exists in database

        if user:
            flash('Email address already exists')
            return redirect(url_for('registeru'))

        entry=User(name=name, contact=contact, emailid=emailid,password=password, service=service, address=address )
        db.session.add(entry)
        db.session.commit()
        return render_template('login.html')
    return render_template('Registrationu.html')    

@app.route("/registerb",methods=['GET','POST'])
def registerb():
    if request.method=='POST':
        oname=request.form.get('oname', False)
        bname=request.form.get('bname', False)
        oemailid=request.form.get('oemailid', False)
        opassword=request.form.get('opassword', False)
        ocontact=request.form.get('ocontact', False)
        oservice=request.form.get('oservice', False)
        oaddress=request.form.get('oaddress', False)
        odescribe=request.form.get('odescribe', False)
        olatitude=request.form.get('olatitude', False)
        olongitude=request.form.get('olongitude', False)
        
        
        service1 = Service.query.filter_by(oemailid=oemailid).first() # if this returns a user, then the email already exists in database

        if service1:
            flash('Email address already exists')
            return redirect(url_for('registerb'))

        file1=request.files['file1']    

        
        entry2=Service(oname=oname, bname=bname,opassword=opassword, ocontact=ocontact, oemailid=oemailid, oservice=oservice, oaddress=oaddress ,odescribe=odescribe, olatitude=olatitude, olongitude=olongitude, imagename=file1.filename, oimage=file1.read())
        db.session.add(entry2)
        db.session.commit()
        return render_template('login.html')
    return render_template("Registrationb.html")
@app.route("/profile")
def profile():
    return render_template('myprofile.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html')
    else:
        emailid = request.form.get('email', False)
        password = request.form.get('password',False)
        try:
            data = User.query.filter_by(emailid=emailid , password=password).first()
            data1 = Service.query.filter_by(oemailid=emailid , opassword=password).first()
            if data is not None:
                session['username'] =data.name
                return redirect(url_for('home'))
            elif data1 is not None:
                session['username'] =data1.oname
                return redirect(url_for('home'))
            else:
                return redirect(url_for('login'))
        except:
            return redirect(url_for('login'))
@app.route('/logout')
def logout():
   session.pop('username', None)
   return redirect(url_for('home'))


if __name__ == "__main__":
    app.run(debug=True)
