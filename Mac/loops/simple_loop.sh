#!/bin/bash

## usage: ./simple_loop.sh 10
## description: loops X times
## works on: macOS Monterey
## fails on:

a=${1:-5}
while [[ $a -gt 0 ]]
do
	echo "current count $a"
	
	sleep 1.2

	a=$((a-1))
done
