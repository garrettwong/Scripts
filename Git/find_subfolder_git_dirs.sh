#!/bin/sh

## usage: Git/find_subfolder_git_dirs.sh
## description: Finds all '.git' directories in the current folder and in child folder directories

find . -name .git -type d -prune
