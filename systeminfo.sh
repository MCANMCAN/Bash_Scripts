#! /bin/bash 
echo "######################"
echo " SYSTEM STATUS REPORT "
echo "######################"

echo "The uptime of the system is: "
uptime 
echo "#############################"
echo "memory utilization " 
free -m 
echo "#############################"
echo "disk utilization " 
df -h
