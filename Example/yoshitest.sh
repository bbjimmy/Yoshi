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
echo "tx1 $tx1"
echo "tx2 $tx2"
echo "tx3 $tx3"
echo "tx4 $tx4"
echo "chk $chk"
echo "chk1 $chk1"
echo "chk2 $chk2"
fi
rm /tmp/yoshout
  

