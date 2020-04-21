#!/bin/sh

FILENAME=$1

echo "Reseting file from git add: " $FILENAME

git reset $FILENAME