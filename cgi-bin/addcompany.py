#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

companyname = form["companyname"].value
consultantname = form["consultantname"].value
gstin = form["gstin"].value
pan = form["pan"].value
iec = form["iec"].value
tin = form["tin"].value
email = form["email"].value
mobile = form["mobile"].value
deliveryaddress = form["deliveryaddress"].value
taxinvoiceaddress = form["taxinvoiceaddress"].value

mydb = connectiondetails.mydb

mycursor = mydb.cursor()


mycursor.execute("insert into companies(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress)"
                 " values('"+str(companyname)+"','"+str(consultantname)+"','"+str(gstin)+"','"+str(pan)+"',"
                "'"+str(iec)+"','"+str(tin)+"','"+str(email)+"','"+str(mobile)+"',"
                "'"+str(deliveryaddress)+"','"+str(taxinvoiceaddress)+"')")

mydb.commit()

print json.dumps(200)
