#!/bin/sh

## usage: ./git_add_reset_file.sh 
## description: reset a file from a commit

FILENAME=$1

echo "Reseting file from git add: " $FILENAME

git reset $FILENAME