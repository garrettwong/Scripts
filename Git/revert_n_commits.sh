#!/bin/sh

## usage: ./revert_n_commits.sh 2

N=${1:-"1"}

git reset --hard HEAD~$N
