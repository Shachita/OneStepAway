from flask import Flask, render_template, request

#Imported for database
from flask_sqlalchemy import SQLAlchemy


app=Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/onestepawaydb'

db=SQLAlchemy(app)

class User(db.Model):
    #(name, email, password, contact , service , address )
    name=db.Column(db.Integer, primary_key=True)
    emailid=db.Column(db.String(80),nullable=True)
    password=db.Column(db.String(120),nullable=True)
    contact=db.Column(db.String(80),nullable=True)
    service=db.Column(db.String(80),nullable=True)
    address=db.Column(db.String(80),nullable=True)

    

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/register",methods=['GET','POST'])
def register():
    if request.method=='POST':
        name=request.form.get('name', False)
        email=request.form.get('email', False)
        password=request.form.get('pass', False)
        contact=request.form.get('phone', False)
        service=request.form.get('service', False)
        address=request.form.get('address', False)
        entry=User(name=name, contact=contact, emailid=email,password=password, service=service, address=address )
        db.session.add(entry)
        db.session.commit()
        return render_template('login.html')
    return render_template('Registrationu.html')    


if __name__ == "__main__":
    app.run(debug=True)