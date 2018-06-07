#!/bin/bash

# find text in folder, including only sh files
TEXT_SEARCH=while
FILE_TYPE=*.sh
FOLDER_NAME=loops/
grep -hnr "$TEXT_SEARCH" --include "$FILE_TYPE" $FOLDER_NAME

