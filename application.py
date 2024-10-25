from flask import Flask

app=Flask(__name__)

@app.route("/")
def rollno():
    return "2314"
    
    