#!/bin/sh

## usage: ./git_compare_local_file_diff_to_previous_commit.sh
## description: compare log of previous file

FILENAME=$1

git log -p -1 $FILENAME