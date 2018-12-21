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
#todate = '2017-03-31'

buy = 0
sold = 0

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



for purchase in purchases:
    buy = purchase[0]



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
  sold = sale[0]

if sold == None:
    sold = 0
if buy == None:
    buy = 0

mm['profit'] = (sold - buy)

print json.dumps(mm)

