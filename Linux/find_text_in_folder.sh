#!/bin/bash

## usage: ./find_text_in_folder.sh "while" "sample-data/"
## description: 
## works on: macOS Monterey
## fails on:

SEARCH_TERM=${1:-"while"}
FOLDER_NAME=${2:-"."}

grep -rnw $FOLDER_NAME -e "$SEARCH_TERM"
