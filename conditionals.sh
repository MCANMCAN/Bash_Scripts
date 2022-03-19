#!/bin/bash 

read -p "Enter a number " NUM 
echo 

if [ $NUM -gt 100 ] 
then 
   echo "We are in IF " 
   sleep 3 
   echo " Number is greater than 100" 
   date 
else 
   echo "You have entered less than 100" 
fi 

echo "script execution completed succesfully" 
