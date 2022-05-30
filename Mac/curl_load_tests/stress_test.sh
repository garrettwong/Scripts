#!/bin/sh

## usage: ./multithreaded_stress_test.sh http://192.168.1.1/
## description: reads many arguments
## works on: macOS Monterey
## fails on:

# Tested using bash version 4.1.5
URL=${1:-"http://35.184.227.169/"}

for ((i=1;i<=1000;i++)); 
do 
   curl -s $URL > /dev/null
   echo $i
done
