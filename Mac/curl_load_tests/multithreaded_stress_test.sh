#!/bin/sh

set -m # Enable Job Control

for i in `seq 3000`; do # start 30 jobs in parallel
  curl -s http://35.184.227.169/ > /dev/null &
done

# Wait for all parallel jobs to finish
while [ 1 ]; do fg 2> /dev/null; [ $? == 1 ] && break; done

