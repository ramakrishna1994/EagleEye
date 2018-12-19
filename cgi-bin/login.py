#! /usr/bin/python
import connectiondetails
import json
import cgi
from uuid import uuid4

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()
username = form["username"].value
password = form["password"].value

#username = "rk"
#password = "rk"

mydb = connectiondetails.mydb

mycursor = mydb.cursor()

mycursor.execute("select count(*) from users where username='"+str(username)+"' and password='"+str(password)+"'")
count = mycursor.fetchall()
res = {}
for x in count:
        if x[0] > 0:
            res["error"] = False
            res["token"] = str(uuid4())
        else:
            res["error"] = True
            res["message"] = "Username or Password Entered Does Not Match"

print json.dumps(res)
