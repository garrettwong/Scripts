#!/bin/bash

counter=1
for var in "$@"
do
    	echo "Iteration: $counter"
	echo "$var"
	counter=$((counter+1))
done
