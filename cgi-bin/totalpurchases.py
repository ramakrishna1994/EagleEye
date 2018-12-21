#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

fromdate = form["fromdate"].value
todate = form["todate"].value

#fromdate = '2017-07-01'
#todate = '2018-03-31'


mydb = connectiondetails.mydb

mycursor = mydb.cursor()

mycursor.execute(" SELECT " 
                    " SUM(bgrandtotal) "
                " FROM "
                    " buydetails "
                " WHERE "
                    " orderid IN (SELECT "
                                    " orderid "
                                " FROM "
                                    " purchaseorders "
                                " WHERE "
                                " podate BETWEEN '"+fromdate+"' AND '"+todate+"');")


purchases = mycursor.fetchall()

mm = {}

for purchase in purchases:
    if purchase[0] == None:
        mm["purchases"] = 0
    else:
        mm["purchases"] = purchase[0]


print json.dumps(mm)

