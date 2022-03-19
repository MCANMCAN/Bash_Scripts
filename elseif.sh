#!/bin/bash 
value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu) 

if [ $value -eq 1 ] 
then 
   echo "1 active Network Interface found." 
elif [ $value -gt 1 ] 
then	
   echo "$value active Network Interfaces found" 
else 
   echo "no interface found." 
fi 
echo "completed." 

