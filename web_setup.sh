#!/bin/bash 

#this program installs httpd server on system , and creates a web site from this web site from a link from free template website automatically ( tooplate.com ) 

echo "######################"
echo " INSTALLING HTTPD SERVICE"
echo "######################"
sudo yum install wget unzip httpd -y > /dev/null 


echo "######################"
echo " START & ENABLE HTTPD SERVICE"
echo "######################"

# start httpd service  
sudo systemctl restart httpd 

# enable for automatically start when server os restarted. 
sudo systemctl enable httpd 

echo "######################"
echo " DOWNLOADING AND EXTRACTING WEB FILES " 
echo "######################"
# a temporary folder created to extract necessary files from downloads 
mkdir -p /tmp/webfiles 
# moves to new folder to download 
cd /tmp/webfiles 
# download website files with download links
wget https://www.tooplate.com/zip-templates/2127_little_fashion.zip
# unzip files 
unzip 2127_little_fashion.zip > /dev/null 
# copy files to servers directory 
cp -rv 2127_little_fashion/* /var/www/html  

echo "######################"
echo " RESTARTING HTTPD SERVICE"
echo "######################"

# restart the httpd server to make changes visible . 
sudo systemctl restart httpd 

echo "######################"
echo " CLEANING THE TEMP FILES"
echo "######################"

# clean up unnecessary files. 

rm -rf /tmp/webfiles 

