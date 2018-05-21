#!/bin/bash
# Tested using bash version 4.1.5
for ((i=1;i<=1000;i++)); 
do 
   curl -s 35.184.227.169 > /dev/null
   echo $i
done
