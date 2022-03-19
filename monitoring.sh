#!/bin/bash 

ls /var/run/httpd/httpd.pid &> /dev/null  

if [ $? -eq 0 ] 
then 
	echo "httpd process is running " 
else 
	echo "Httpd process is not running "
	echo "Do you want to start httpd" 
	read ans 
	if [ $ans = 'y' ] 
	then 
		systemctl start httpd
		if [ $? -eq 0 ] 
		then 
			echo "started"
		else 
			echo "can not started , please contact the system admin"
		fi 
	else 
		echo " user did not start the httpd service " 
	fi 
fi 
