BEGIN {
          FS = " "
      }
NR{
	print $1 

	for(i=1;i<=length($1);i=i+1){
		filen = substr($1, i, 1)
		print " " > filen
		}
	for(i=1;i<=length($2);i=i+1){
		filen = substr($2, i, 1)
		print " " > filen
		}

}

END {
}

