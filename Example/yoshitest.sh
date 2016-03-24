#!sh
../src/yoshi.yab Yoshi >/tmp/yoshout
    while IFS='' read -r line || [[ -n "$line" ]]; do
	var1=$(echo $line | cut -f1 -d=)
	 #$var1=$(echo $line | cut -f2 -d=)
	var2=$(echo $line | cut -f2 -d=)
	eval $var1='$var2' 
      done < "/tmp/yoshout"
if [ $cancel -eq 1 ]
then
 echo "cancel $cancel"
else
echo "default $default"
echo "tx $tx"
fi
rm /tmp/yoshout
  

