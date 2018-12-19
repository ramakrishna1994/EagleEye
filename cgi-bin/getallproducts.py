#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

filter = form["filter"].value
#filter = ""
mydb = connectiondetails.mydb

mycursor = mydb.cursor()

mycursor.execute("select * from products where productname like '%"+str(filter)+"%' or "
                                            "casno like '%"+str(filter)+"%' or "
                                            "hsncode like '%"+str(filter)+"%' ;")

productslist = mycursor.fetchall()

res = []

for product in productslist:
    mm = {}
    mm["productid"] = product[0]
    mm["productname"] = product[1]
    mm["casno"] = product[2]
    mm["hsncode"] = product[3]
    res.append(mm)

print json.dumps(res)

