#!/usr/bin/python
# evenodd.py
# tells if input integer is even or odd

import sys
import cgi

form = cgi.FieldStorage( )
print "Content-type: text/html\n"

print """<html>
<body style="background-color:#FBFBEF">
	<center>
	<p style="font-family:arial;font-weight:bold;color:Green;font-size:18px">
	==Redmart Demo Page==
	</p>
	</center><br><br>"""


###Input integer
print '<FORM METHOD="post" type="hidden" ACTION="/cgi-bin/evenodd.py">'
print "<table border=2 BORDERCOLOR=BLACK>"
print "<tr><th BGCOLOR=\"#E3CEF6\" colspan=\"3\"><font color=black>Even Odd Check</font></th></tr>"
print '<tr><th>Input Integer:</th><th><input type="number" name="number"></th><th><input type="submit" value="Submit"></th></tr>'
print "</table><br></FORM>"

print "<table border=1 BORDERCOLOR=BLACK>"
print '<p style="font-family:verdana;font-weight:bold;color:Blue;font-size:12px">'

if form.has_key('number'):
	try:
		number=int(form['number'].value)
	except:
		print "Input Error: Input not integer"
		sys.exit()
else:
	print "Number not specified"
	sys.exit()

if (number % 2 == 0): 
	print number,"is EVEN" 
else:
	print number,"is ODD"

print "</p></table></body></html>"
