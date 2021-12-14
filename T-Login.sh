bash .supBanner.sh 
bash .sbanner.sh
# echo "t-Login.sh" > /data/data/com.termux/files/usr/etc/bash.bashrc
echo -e "\e[32m[+] Installing.........\e[0m"
check_l=$( head -n 1 /data/data/com.termux/files/usr/etc/bash.bashrc )
if [ "$check_l" == "source /data/data/com.termux/files/usr/etc/Termux-Login.sh" ] || [ 1=1 ]
then
echo -e "\e[32m[+] Alreading Install \e[0m"
else
echo -ne '\e[34mInstall[\e[44m\e[32m##.............][20%]\r'
sleep 0.1
echo 'source /data/data/com.termux/files/usr/etc/Termux-Login.sh
if [ ${login_id} != "True" ]
then 
logout
fi 
'>> /data/data/com.termux/files/usr/etc/bash.bashrc
echo -ne '\e[34mInstall[\e[44m\e[32m######.........][40%]\r'
sleep 0.1
cp Termux-Login.sh /data/data/com.termux/files/usr/etc/
cp  .mbanner.sh /data/data/com.termux/files/usr/etc/
echo -ne '\e[34mInstall[\e[44m\e[32m#########......][60%]\r'
sleep 0.1
cp T-Login_prt.sh /data/data/com.termux/files/usr/etc/
cp  .supBanner.sh  /data/data/com.termux/files/usr/etc/
echo -ne '\e[34mInstall[\e[44m\e[32m###########....][80%]\r'
sleep 0.1
cp .login ~
cp .sbanner.sh /data/data/com.termux/files/usr/etc/
echo -ne '\e[34mInstall[\e[44m\e[32m###############][100%]\r'
sleep 0.1
echo -ne '\n'
echo " "
echo "\e[32m install Succesfully......... \e[0m "
fi

echo " "
echo -e "\e[35mCreate  \e[93mnew User....\e[0m"
echo -e "\e[36mPress\e[5m\e[32m Enter \e[25m\e[36m to Continue....\e[0m"
read abc
clear
bash create.sh

