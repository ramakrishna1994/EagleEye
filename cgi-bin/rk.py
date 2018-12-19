#! /usr/bin/python
import connectiondetails
import json

print 'Content-type: text/html'
print ''


mydb = connectiondetails.mydb

mycursor = mydb.cursor()

mycursor.execute("select name from users")
filelist = mycursor.fetchall()
res = []
for file in filelist:
        res.append(file[0])

print json.dumps(res)
