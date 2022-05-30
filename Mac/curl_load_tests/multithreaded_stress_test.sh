#!/bin/sh

## usage: ./multithreaded_stress_test.sh http://192.168.1.1/
## description: reads many arguments
## works on: macOS Monterey
## fails on:

set -m # Enable Job Control

URL=${1:-"http://35.184.227.169/"}

for i in `seq 3000`; do # start 30 jobs in parallel
  curl -s $URL > /dev/null &
done

# Wait for all parallel jobs to finish
while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done

