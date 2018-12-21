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

mycursor.execute("select count(*) from products where casno='"+str(casno)+"'")

cascounts = mycursor.fetchall()

mm = {}

for count in cascounts:
    if count[0] >= 1:
        mm['error'] = 1
        mm['message'] = 'Product with CAS No. Already Exists'
    else:
        mm['error'] = 0
        mycursor.execute("insert into products(productname,casno,hsncode) "
                         " values('"+str(productname)+"','"+str(casno)+"','"+str(hsncode)+"')")
        mydb.commit()

print json.dumps(mm)
