INPUT=data.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read mediaId url name Pubc Pubs Lang AbCntry Medaty PubNote StorrPday dststory
do
	var1="${url:1:${#url}-2}"
	var2="${name:1:${#name}-2}"
        echo -e "$var1 \t $var2"
done < $INPUT
IFS=$OLDIFS

