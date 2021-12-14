bash /data/data/com.termux/files/usr/etc/.mbanner.sh
echo -e -n "\e[32mEnter Your \e[33mName\e[39m : "; read  Name 
echo -e -n "\e[32mEnter New  \e[34mUserName\e[39m :" ; read UserName
PassWord=123
while [ "$PassWord" != "$PassCheck" ]; do 
echo -e -n "\e[32mEnter \e[91mPassword \e[39mfor \e[34m${UserName}  : \e[39m" ; read PassWord 
echo -e -n "\e[31mre-Enter Password \e[8m" ; read PassCheck
echo -e   "\e[28m"
if [ "$PassWord" != "$PassCheck" ]
then
echo -e "\e[42m\e[33m Password Not match ! Try agin \e[0m\e[49m "
fi
done
echo "`date`,${Name},${UserName},${PassWord}" >> ~/.login
echo -e "\e[32m[+] Create Account Succesfully.........\e[0m"
sleep 0.9
clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "             "EXIT FROM TERMUX AND RE OPEN IT AFTER 5 SECONDS "
echo " "
echo " "
sleep 2.0
cd $HOME
logout

