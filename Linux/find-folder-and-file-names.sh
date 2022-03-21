#!/bin/bash

## usage: ./file-folder-and-file-names.sh "searchterm"

SEARCH_TERM=${1:-"terraform-validator"}

find . -name $SEARCH_TERM
