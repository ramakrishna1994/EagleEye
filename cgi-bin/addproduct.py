#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

productname = form["productname"].value
casno = form["casno"].value
hsncode = form["hsncode"].value


mydb = connectiondetails.mydb

mycursor = mydb.cursor()


mycursor.execute("insert into products(productname,casno,hsncode) "
                 "values('"+str(productname)+"','"+str(casno)+"','"+str(hsncode)+"')")

mydb.commit()

print json.dumps(200)
