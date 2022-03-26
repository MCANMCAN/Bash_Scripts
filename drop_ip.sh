#!/bin/bash 

# This scripts takes ip adress as an argument and drops packets from that ip address  # 
if [[ $# -eq 0 ]] 
then 
	echo "This script need argument" 

else
	iptables -I INPUT -s $1 -j DROP 
	echo "the ip address is dropped : $1 " 
fi

