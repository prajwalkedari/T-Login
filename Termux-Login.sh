i=1
login_id="False"
while [ $i -le 3 ]
do 
read -p "Enter UserName : " UserName
read -p "Enter Password of User ${UserName} : " PassWord
if [ "$UserName" == "root" ] && [ "$PassWord" == "root" ] 
then 
login_id="True"
bash /data/data/com.termux/files/usr/etc/T-Login_prt.sh
break
fi
while read lo_check; do
IFS=','
read -ra aar <<< "$lo_check"
if [ "${aar[2]}" ==  "$UserName" ] && [ "${aar[3]}" == "$PassWord" ] 
then
login_id="True"
fi
done < ~/.login
if [ "$login_id" == "True" ]
then 
break
else 
echo "Try again ${i}"
fi
if [ $i == 3 ]
then
echo "Closing the Terinmal"
break
fi
((i++))
done
