#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

fromdate = form["fromdate"].value
todate = form["todate"].value

#fromdate = '2017-01-01'
#todate = '2018-04-31'


mydb = connectiondetails.mydb

mycursor = mydb.cursor()

mycursor.execute("SELECT "
                    "  CONCAT(MONTHNAME(ti.taxinvoicedate),'-',YEAR(ti.taxinvoicedate)), "
                    " SUM(sd.sgrandtotal) "
                " FROM "
                  "  eagleeye.selldetails AS sd, "
                 "   eagleeye.taxinvoices AS ti "
                " WHERE "
                  "  (ti.taxinvoicedate BETWEEN '"+fromdate+"' AND '"+todate+"') "
                 "       AND (sd.orderid = ti.orderid) "
                " GROUP BY YEAR(ti.taxinvoicedate) , MONTH(ti.taxinvoicedate) , MONTHNAME(ti.taxinvoicedate) "
                " ORDER BY YEAR(ti.taxinvoicedate) , MONTH(ti.taxinvoicedate);")

sales = mycursor.fetchall()


res = []

for sale in sales:
    mm = []
    mm.append(sale[0])
    mm.append(sale[1])
    res.append(mm)


print json.dumps(res)

