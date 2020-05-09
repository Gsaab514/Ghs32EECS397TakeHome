BEGIN {
          FS = ","
      }
NR{
	n = length($2)-2;
	str2 = substr($2,2,n)
	n = length($3)-2;
	str3 = substr($3,2,n)
	print str2 "\t" str3
}

END {
}

