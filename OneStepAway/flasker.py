from flask import Flask,render_template,request

'''Imported for database'''
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)

'''Home page'''
@app.route("/")
def home():
    return 

'''registration'''  
def registration():



def login():














if __name__ == "__main__":
    app.run(debug=True)