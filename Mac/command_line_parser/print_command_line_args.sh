#!/bin/sh

## usage: ./print_command_line_args.sh first second third test
## description: prints command line arguments one at a time
## works on: macOS Monterey
## fails on:

counter=1
for var in "$@"
do
    echo "Iteration: $counter"
    echo "$var"
    counter=$((counter+1))
done
