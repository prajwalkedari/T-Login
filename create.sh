echo "Enter Your Name"
read Name
echo "Enter New  UserName"
read UserName
PassWord=123
while [ "$PassWord" != "$PassCheck" ]; do 
echo "Enter Password for ${UserName}"
read PassWord 
echo "re-Enter Password:"
read PassCheck
done
echo "`date`,${Name},${UserName},${PassWord}" >> ~/.login
