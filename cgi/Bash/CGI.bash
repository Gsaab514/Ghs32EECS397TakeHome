#!/bin/bash
input="Data.txt"
while IFS= read -r line
do
	  var=$line
done < "$input"

echo "$var"
s="${var%%&*}"
n=${#s}

var2="${var:n+8:3}"
var1="${var:n-3:3}"

echo " $var1 $var2"
printf "<form action=\"index.php\" method=\"post\">\n"
printf "<ul>\n"
printf "   <li name=\"%s\" value=\"text\">input1</li>\n" $var1
printf "   <li name=\"%s\" value=\"text\">input2</li>\n" $var2
printf "</ul>\n"
printf "  <input type=\"submit\" value=\"Submit\" >\n"
printf "</form>\n"
