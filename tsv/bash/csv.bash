INPUT=data.csv
OLDIFS=$IFS
IFS=','
i="0"
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read mediaId url name Pubc Pubs Lang AbCntry Medaty PubNote EditorNote StorrPday FirstStory
do
	if [ $i == "0" ]; then
		var0=$mediaId
		var1=$url
		var2=$name
		var3=$Pubc
		var4=$Pubs
		var5=$Lang
		var6=$AbCntry
		var7=$Medaty
		var8=$PubNote
		var9=$EditorNote
		var10=$StorrPday
		var11=FirstStory
	else
		var0="${mediaId:1:${#mediaId}-2}"
		var1="${url:1:${#url}-2}"
		var2="${name:1:${#name}-2}"
		var3="${Pubc:1:${#Pubc}-2}"
		var4="${Pubs:1:${#Pubs}-2}"
		var5="${Lang:1:${#Lang}-2}"
		var6="${AbCntry:1:${#AbCntry}-2}"
		var7="${Medaty:1:${#Medaty}-2}"
		var8="${PubNote:1:${#PubNote}-2}"
		var9="${EditorNote:1:${#EditorNote}-2}"
		var10="${StorrPday:1:${#StorrPday}-2}"
		var11="${FirstStory:1:${#FirstStory}-2}"
	fi
       	echo -e "$var0 \t $var1 \t $var2 \t $var3 \t $var4 \t $var5 \t $var6 \t $var7 \t $var8 \t $var9 \t $var10 \t $var11"
	i="1"
done < $INPUT
IFS=$OLDIFS

