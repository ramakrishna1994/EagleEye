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

mycursor.execute("select * from companies where companyname like '%"+str(filter)+"%' or "
                                            "consultantname like '%"+str(filter)+"%' ;")

companylist = mycursor.fetchall()

res = []

for company in companylist:
    mm = {}
    mm["companyid"] = company[0]
    mm["companyname"] = company[1]
    mm["consultantname"] = company[2]
    res.append(mm)

print json.dumps(res)

