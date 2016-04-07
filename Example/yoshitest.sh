#!sh
parameter="chk2.default = 1"
parameter1="tx1.mandatory = false"
parameter2="*.title = Your Window Title"
parameter3="tx1.default = your text here"
parameter4="radio.default = option4"
parameter5="txt1.default = A group of checkboxes"
yoshi Yoshi "$parameter" "$parameter1" "$parameter2" "$parameter3" "$parameter4" "$parameter5">/tmp/yoshout

while IFS='' read -r line || [[ -n "$line" ]]; do
	var1=$(echo $line | cut -f1 -d=)
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
echo "radio $radio"
fi
rm /tmp/yoshout
  

