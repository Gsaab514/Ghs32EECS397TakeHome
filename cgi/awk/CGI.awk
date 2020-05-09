BEGIN {
  FS = "&"
}
NR{
	N = length($1)
	inp1 = substr($1,N-2,3)
	N = length($2)
	inp2 = substr($2,N-2,3)
	htmlfile="out.html";
	print "<form action=\"index.cgi\" method=\"post\">" > htmlfile
    	print "<ul>" > htmlfile
    	print "<li name=\"" inp1 "\" value=\"text\">input1</li>" > htmlfile
    	print "<li name=\"" inp2 "\" value=\"text\">input2</li>" > htmlfile
    	print "</ul>" > htmlfile
  	print "<input type=\"submit\" value=\"Submit\" >" > htmlfile
	print "</form>" > htmlfile
}


