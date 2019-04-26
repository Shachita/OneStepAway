from flask import Flask, render_template, request, redirect, url_for, flash
from werkzeug.security import generate_password_hash, check_password_hash
from flask import Flask, session
from flask_sqlalchemy import SQLAlchemy
import os
import re
import json
import folium
from folium.plugins import MarkerCluster
from math import sin, cos, sqrt, atan2, radians


UPLOAD_FOLDER='static/img/userimages/'
ALLOWED_EXTENSIONS=set(['jpg','png'])





app=Flask(__name__)
app.secret_key=os.urandom(24)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/onestepawaydb'


db=SQLAlchemy(app)


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
    brating=db.Column(db.Integer,nullable=True)


class Userreview(db.Model):
    __tablename__='userreview'
    #(name, email, bemailid, message, rating , )
    no=rating=db.Column(db.Integer,primary_key=True)
    bemailid=db.Column(db.String(200),nullable=True)
    name=db.Column(db.String(80),nullable=True)
    emailid=db.Column(db.String(80),nullable=True)
    message=db.Column(db.String(120),nullable=True)
    rating=db.Column(db.Integer,nullable=True)


@app.route("/main",methods=['GET','POST'])
def main():
    if request.method=='POST':
        try:
            session['home']=False
            searchbar=request.form.get('searchbar', False) 

            searches = Service.query.filter_by(oservice=searchbar).all()
            print(searches)
            '''SORT BY TAKING LOGITUDE AND LATITUDE FROM SEARCHES '''
            latitude=request.form.get('latitude', False)
            longitude=request.form.get('longitude', False)
            '''radius of earth'''
            R = 6373.0
            keylist=[]
            for searcher in searches:
                lat1=radians(float(latitude))
                lon1=radians(float(longitude))
                lat2=radians(searcher.olatitude)
                lon2=radians(searcher.olongitude)
                dlon = lon2 - lon1
                dlat = lat2 - lat1

                a = sin(dlat / 2)**2 + cos(lat1) * cos(lat2) * sin(dlon / 2)**2
                c = 2 * atan2(sqrt(a), sqrt(1 - a))
                distance1= R * c
                distance=float("{0:.5f}".format(distance1))

                keylist.append(distance)
            print(keylist)
            di=dict(zip(searches,keylist))
            print(di)
            res = list(sorted(di, key=di.__getitem__))
            print(res)
            mysearches=res
            print(mysearches)

            return render_template("main.html",mysearches=mysearches)
        except:
            error=True
            error="PLEASE CLICK LOCATION BUTTON TO GRANT YOUR LOCATION"
            return render_template("main.html",error=error)
    session['home']=False
    return render_template("main.html")

@app.route("/register")
def register():
    
    return render_template("Registration.html")

@app.route("/")
def index():
    session['home']=True
    return redirect(url_for('home'))


'''Session control added'''
@app.route("/home")
def home():
    session['home']=True
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
        password=request.form.get('password', False)
        contact=request.form.get('contact', False)
        service=request.form.get('service', False)
        address=request.form.get('address', False)

        user = User.query.filter_by(emailid=emailid).first() # if this returns a user, then the email already exists in database

        if user:
            flash('Email address already exists')
            return redirect(url_for('registeru'))


        entry=User(name=name, contact=contact, emailid=emailid,password=password, service=service, address=address)
        db.session.add(entry)
        db.session.commit()
        return render_template('login.html')
    
    return render_template('Registrationu.html')

def allowed_file(imagename):
    return '.' in imagename and \
        imagename.rsplit('.',1)[1] in ALLOWED_EXTENSIONS

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

        file=request.files['file1']
        imagename= oemailid + '.jpg'
        if file and allowed_file(file.filename):
            file.save(os.path.join('static/img/userimages/',imagename))


        entry2=Service(oname=oname, bname=bname,opassword=opassword, ocontact=ocontact, oemailid=oemailid, oservice=oservice, oaddress=oaddress ,odescribe=odescribe, olatitude=olatitude, olongitude=olongitude ,imagename=imagename)
        db.session.add(entry2)
        db.session.commit()
        return render_template('login.html')
  
    return render_template("Registrationb.html")


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
                session['userlogin']=True
                session['username'] =data.name
                session['service']=data.service
                session['emailid']=data.emailid
                session['contact']=data.contact
                session['address']=data.address
                session['blogin']=False

                return redirect(url_for('home'))
            elif data1 is not None:
                session['blogin']=True
                session['username'] =data1.oname
                session['service']=data1.oservice
                session['emailid']=data1.oemailid
                session['contact']=data1.ocontact
                session['address']=data1.oaddress
                session['imagename']= data1.imagename
                session['bname']=data1.bname
                session['olatitude']=float(data1.olatitude)
                session['olongitude']=float(data1.olongitude)
                session['odescribe']=data1.odescribe
                session['userlogin']=False
                
               

                
                
                

                return redirect(url_for('home'))
            else:
                return redirect(url_for('login'))
        except:
            return redirect(url_for('home'))
@app.route("/profile")
def profile():
    session['home']=False
    if 'username' in session:
        if session['blogin']:
            name=session['username']
            service=session['service']
            emailid=session['emailid']
            contact=session['contact']
            address=session['address']
            image=session['imagename']
            bname=session['bname']
            latitude=session['olatitude']
            longitude=session['olongitude']
            describe=session['odescribe']

            boulder_coords = [latitude,longitude]

            my_map = folium.Map(location = boulder_coords, zoom_start = 30)
            
            folium.Marker([latitude,longitude],popup='This is location').add_to(my_map)

            my_map.save('templates/map.html')
            
            return render_template('myprofile.html', name=name, service=service, emailid=emailid, address=address, contact=contact, image=image,bname=bname,latitude=latitude,longitude=longitude,describe=describe)
        elif session['userlogin']:
            name=session['username']
            service=session['service']
            emailid=session['emailid']
            contact=session['contact']
            address=session['address']

            return render_template('myprofile.html', name=name, service=service, emailid=emailid, address=address, contact=contact)
@app.route('/rprofile', methods=['GET', 'POST'])
def rprofile():
    try:
        if request.method == 'POST':
            selected=request.form.get('selected',False)
            print(selected)
            profiler = Service.query.filter_by(oemailid=selected).first()
            session['bemailid']=profiler.oemailid
            print(profiler)
            reviewcollection= Userreview.query.filter_by(bemailid=selected).all()
            if not reviewcollection:
                message="No reviews yet . Be the first one to review"
                return render_template('rprofile.html',profiler=profiler,message=message)
            else:
                return render_template('rprofile.html',profiler=profiler,reviewcollection=reviewcollection)
    except:
        return '<p>Only one review per user ..Click Back to go to main Search page</p>'
        
    return '<p>Only one review per user ..Click Back to go to main Search page</p>'

@app.route('/feedback', methods=['GET', 'POST'])
def feedback():
    if request.method=='POST':
        name=request.form.get('name',False)
        emailid=request.form.get('email',False)
        rating=request.form.get('rating',False)
        message=request.form.get('message',False)
        bemailid=session['bemailid']
        
        entry3=Userreview(name=name,bemailid=bemailid,message=message,rating=rating,emailid=emailid)
        db.session.add(entry3)
        db.session.commit()
        reviews = Userreview.query.filter_by(bemailid=bemailid).all()
        ratingsum=0
        for review in reviews:
            ratingsum=ratingsum+int(review.rating)
        count=len(reviews)
        if count!=0:
            ratingsum=ratingsum/count
        servicer = Service.query.filter_by(oemailid=bemailid).first()
        servicer.brating=ratingsum
        db.session.commit()

        return redirect(url_for('main'))
    return render_template('rprofile.html')


@app.route('/logout')
def logout():
   session.clear()
   return redirect(url_for('home'))


if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5002)
