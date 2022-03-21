#!/bin/bash

## usage: ./awk_output_shell.sh
## description: prints and sorts /etc/passwd file
## works on: macOS Monterey
## fails on: 

awk -F':' '{ print  }' /etc/passwd | sort
