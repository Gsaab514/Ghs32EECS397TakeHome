BEGIN {
          FS = ","
	  i = 0
      }
NR{
	if( i==0 ){
		str1 = $1
		str2 = $2
		str3 = $3
		str4 = $4
		str5 = $5
		str6 = $6
		str7 = $7
		str8 = $8
		str9 = $9
		str10 =$10
		str11 =$11
		str12 =$12
	}else{
		n = length($1)-2;
		str1 = substr($1,2,n)
		n = length($2)-2;
		str2 = substr($2,2,n)
		n = length($3)-2;
		str3 = substr($3,2,n)
		n = length($4)-2;
		str4 = substr($4,2,n)
		n = length($5)-2;
		str5 = substr($5,2,n)
		n = length($6)-2;
		str6 = substr($6,2,n)
		n = length($7)-2;
		str7 = substr($7,2,n)
		n = length($8)-2;
		str8 = substr($8,2,n)
		n = length($9)-2;
		str9 = substr($9,2,n)
		n = length($10)-2;
		str10 = substr($10,2,n)
		n = length($11)-2;
		str11 = substr($11,2,n)
		n = length($12)-2;
		str12 = substr($12,2,n)
	}
	i =i+1
	print str1 "\t" str2 "\t" str3 "\t" str4 "\t" str5 "\t" str6 "\t" str7 "\t" str8 "\t" str9 "\t" str10 "\t" str11 "\t" str12 
}

END {
}

