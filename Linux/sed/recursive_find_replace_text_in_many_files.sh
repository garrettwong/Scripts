#!/bin/bash

## usage: recursive_find_replace_text_in_many_files.sh
## description: loops X times
## works on: macOS Monterey
## fails on:

TERM_TO_FIND="REPLACED"
TERM_TO_REPLACE_WITH="REPLACED"

find * -type f -exec sed -i -e "s/$TERM_TO_FIND/$TERM_TO_REPLACE_WITH/g" {} \;