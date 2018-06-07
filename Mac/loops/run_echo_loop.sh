#!/bin/bash

a=5
while [[ $a -gt 0 ]]
do
	echo "current count $a"
	sleep 3
	a=$((a-1))
done
