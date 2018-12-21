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

mm = {}
mydb = connectiondetails.mydb

mycursor = mydb.cursor()

sql = " SELECT " \
      " SUM(sgrandtotal) "\
        " FROM "\
            " selldetails "\
        " WHERE "\
            " orderid IN (SELECT "\
                            " orderid "\
                        " FROM "\
                            " taxinvoices "\
                        " WHERE "\
                        " taxinvoicedate BETWEEN '"+fromdate+"' AND '"+todate+"');"



mycursor.execute(sql)
sales = mycursor.fetchall()
for sale in sales:
    if sale[0]==None:
        mm["sales"] = 0
    else:
        mm["sales"] = sale[0]



print json.dumps(mm)

