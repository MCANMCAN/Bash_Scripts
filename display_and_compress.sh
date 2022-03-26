#!/bin/bash 

if [[ $# -eq 0 ]] 
then
	echo "this script needs arguments" 
else 
	echo "displaying contents of $1" 
	sleep 2 
	cat $1
	echo "compression is starting" 	
	sleep 1 
	tar -czvf "$1.tar.gz" $1
fi
	
