#!/bin/sh

## usage: ./revert_to_master.sh 
## revert to master branch after you git reset --hard HEAD~5 or similar command

git fetch origin
git reset --hard origin/master
