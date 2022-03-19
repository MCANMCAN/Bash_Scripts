#!/bin/bash 

# ADD USERS FOR USERNAME OF EVERY WORD IN STRING 
MYUSERS="alpha beta gamma" 
for USR in $MYUSERS 
do 
   echo "###########################" 
   useradd $USR
   id $USR   
done 
