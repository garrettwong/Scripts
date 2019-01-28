#!/bin/bash

## usage: ./find_text_in_folder.sh "while" "loops/"

SEARCH_TERM=${1:-"while"}
FOLDER_NAME=${2:-"loops/"}

grep -rnw $FOLDER_NAME -e "$SEARCH_TERM"