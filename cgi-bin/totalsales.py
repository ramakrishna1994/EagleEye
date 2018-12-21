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
                    " SUM(sgrandtotal) "
                " FROM "
                    " selldetails "
                " WHERE "
                    " orderid IN (SELECT "
                                    " orderid "
                                " FROM "
                                    " taxinvoices "
                                " WHERE "
                                " taxinvoicedate BETWEEN '"+fromdate+"' AND '"+todate+"');")


sales = mycursor.fetchall()

mm = {}

for sale in sales:
    mm["sales"] = sale[0]

print json.dumps(mm)

