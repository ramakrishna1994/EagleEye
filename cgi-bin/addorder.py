#! /usr/bin/python
import connectiondetails
import json
import cgi

print 'Content-type: text/html'
print ''

form = cgi.FieldStorage()

orderid = -1

productid = str(form["productid"].value)
pocompanyid = str(form["pocompanyid"].value)
taxinvoicecompanyid = str(form["taxinvoicecompanyid"].value)

ponumber = str(form["ponumber"].value)
podate = str(form["podate"].value)
poinsurance = str(form["poinsurance"].value)
potransportation = str(form["potransportation"].value)
podelivery = str(form["podelivery"].value)
popayment = str(form["popayment"].value)


taxinvoicenumber = str(form["taxinvoicenumber"].value)
taxinvoicedate = str(form["taxinvoicedate"].value)
taxinvoiceponumber = str(form["taxinvoiceponumber"].value)
taxinvoicepodate = str(form["taxinvoicepodate"].value)
taxinvoicetransportation = str(form["taxinvoicetransportation"].value)
taxinvoicedelivery = str(form["taxinvoicedelivery"].value)
taxinvoicepayment = str(form["taxinvoicepayment"].value)


bunits = str(form["bunits"].value)
bpkts = str(form["bpkts"].value)
bqty = str(form["bqty"].value)
brate = str(form["brate"].value)
btotal = str(form["btotal"].value)
bfreight = str(form["bfreight"].value)
btotalbeforetax = str(form["btotalbeforetax"].value)
bigst = str(form["bigst"].value)
bcgst = str(form["bcgst"].value)
bsgst = str(form["bsgst"].value)
bgrandtotal = str(form["bgrandtotal"].value)

sunits = str(form["sunits"].value)
spkts = str(form["spkts"].value)
sqty = str(form["sqty"].value)
srate = str(form["srate"].value)
stotal = str(form["stotal"].value)
sfreight = str(form["sfreight"].value)
stotalbeforetax = str(form["stotalbeforetax"].value)
sigst = str(form["sigst"].value)
scgst = str(form["scgst"].value)
ssgst = str(form["ssgst"].value)
sgrandtotal = str(form["sgrandtotal"].value)

mydb = connectiondetails.mydb

mycursor = mydb.cursor()
mycursor.execute("insert into orders(productid,pocompanyid,taxinvoicecompanyid) "
                 "values("+productid+","+pocompanyid+","+taxinvoicecompanyid+");")
mydb.commit()


mycursor.execute("select max(orderid) from orders");
nums = mycursor.fetchall()
for num in nums:
    orderid = str(num[0])


mycursor.execute("insert into purchaseorders(orderid,ponumber,podate,poinsurance,potransportation,podelivery,popayment) "
                 "values("+orderid+",'"+ponumber+"','"+podate+"','"+poinsurance+"','"+potransportation+"',"
                    "'"+podelivery+"','"+popayment+"')")
mydb.commit()

mycursor.execute("insert into taxinvoices(orderid,taxinvoicenumber,taxinvoicedate,taxinvoiceponumber,taxinvoicepodate,taxinvoicetransportation,taxinvoicedelivery,taxinvoicepayment) "
                 "values("+orderid+",'"+taxinvoicenumber+"','"+taxinvoicedate+"','"+taxinvoiceponumber+"',"
                "'"+taxinvoicepodate+"','"+taxinvoicetransportation+"','"+taxinvoicedelivery+"','"+taxinvoicepayment+"');")
mydb.commit()


mycursor.execute("insert into buydetails(orderid,bunits,bpkts,bqty,brate,btotal,bfreight,btotalbeforetax,bigst,bcgst,bsgst,bgrandtotal) "
                 "values("+orderid+",'"+bunits+"','"+bpkts+"','"+bqty+"','"+brate+"','"+btotal+"','"+bfreight+"',"
                    "'"+btotalbeforetax+"','"+bigst+"','"+bcgst+"','"+bsgst+"','"+bgrandtotal+"')")
mydb.commit()


mycursor.execute("insert into selldetails(orderid,sunits,spkts,sqty,srate,stotal,sfreight,stotalbeforetax,sigst,scgst,ssgst,sgrandtotal) "
                 "values("+orderid+",'"+sunits+"','"+spkts+"','"+sqty+"','"+srate+"','"+stotal+"','"+sfreight+"',"
                    "'"+stotalbeforetax+"','"+sigst+"','"+scgst+"','"+ssgst+"','"+sgrandtotal+"')")
mydb.commit()

print json.dumps(200)
