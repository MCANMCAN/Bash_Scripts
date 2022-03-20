#!/bin/bash 

counter=0


while [ $counter -lt 5 ] 
do 
  echo "Looping..." 
  sleep 1 
  counter=$(( $counter + 1 )) 
done 

echo "loop ended" 
 
