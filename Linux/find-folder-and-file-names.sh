#!/bin/bash

## usage: ./find-folder-and-file-names.sh "get-os.sh"
## description: Find folder and file names
## works on: macOS Monterey
## fails on:

SEARCH_TERM=${1:-"terraform-validator"}

find . -name $SEARCH_TERM
