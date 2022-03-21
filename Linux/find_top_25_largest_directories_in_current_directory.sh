#!/bin/bash

## usage: ./find_top_25_largest_directories_in_current_directory.sh
## description: Finds 25 largest directories
## works on: macOS Monterey
## fails on:

du -a . | sort -n -r | head -n 25
