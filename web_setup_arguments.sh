#!/bin/bash 
# VARIABLES : 

PACKAGE="httpd wget unzip"
TEMPDIR="/tmp/webfiles"
SVC="httpd"
ART="$1"
URL="$2"
 
#this program installs httpd server on system , and creates a web site from this web site from a link from free template website automatically ( tooplate.com ) 
echo "You are running $0"
echo 
echo "######################"
echo " INSTALLING HTTPD SERVICE"
echo "######################"
sudo yum install $PACKAGE -y > /dev/null 


echo "######################"
echo " START & ENABLE HTTPD SERVICE"
echo "######################"

# start httpd service  
sudo systemctl restart $SVC 

# enable for automatically start when server os restarted. 
sudo systemctl enable $SVC 

echo "######################"
echo " DOWNLOADING AND EXTRACTING WEB FILES " 
echo "######################"
# a temporary folder created to extract necessary files from downloads 
mkdir -p $TEMPDIR 
# moves to new folder to download 
cd $TEMPDIR
# download website files with download links
wget $URL
# unzip files 
unzip $ART.zip > /dev/null 
# copy files to servers directory 
cp -r $ART/* /var/www/html  

echo "######################"
echo " RESTARTING HTTPD SERVICE"
echo "######################"

# restart the httpd server to make changes visible . 
sudo systemctl restart $SVC 

echo "######################"
echo " CLEANING THE TEMP FILES"
echo "######################"

# clean up unnecessary files. 

rm -rf $TEMPDIR 

