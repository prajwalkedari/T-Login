# echo "t-Login.sh" > /data/data/com.termux/files/usr/etc/bash.bashrc
echo "Installing........."
check_l=$( head -n 1 /data/data/com.termux/files/usr/etc/bash.bashrc )
if [ "$check_l" == "T-Login.sh" ] 
then
echo "alreading Install"
else
echo 'source /data/data/com.termux/files/usr/etc/Termux-Login.sh
if [ ${login_id} != "True" ]
then 
logout
fi 

'>> /data/data/com.termux/files/usr/etc/bash.bashrc
cp Termux-Login.sh /data/data/com.termux/files/usr/etc/
cp T-Login_prt.sh /data/data/com.termux/files/usr/etc/
cp .login ~
echo "Install Succesfully......... "
fi
echo " "
echo "Create new User...."
echo "Press Enter to Continue...."
read abc
clear
bash create.sh

