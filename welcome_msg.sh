#!/bin/bash 

echo "WELCOME $USER on $HOSTNAME" 
echo "#################################################################" 

FREE_RAM=$(free -m | grep Mem | awk '{print $4}')

LOAD=`uptime | awk '{print $4}'`
ROOT_FREE=$(df -h | grep 'dev/sda1' | awk ' {print $4}')

echo "The system have $FREE_RAM mb free ram . " 
echo "#################################################################" 
echo 
echo "The Current Load Average is $LOAD"
echo "#################################################################" 
echo 
echo "The AVAILABLE DISK SPACE OF THE ROOT PART. is $ROOT_FREE"
echo "#################################################################" 
echo 
