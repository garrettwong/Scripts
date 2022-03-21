#!/bin/bash

## usage: ./gettodaysdate.sh
## description: prints date in format, 'Mon Feb 12'
## works on: Debian9
## fails on: macOS Monterey

$a = "hello"
$b = "world"
echo "$a$b"

dm = (date | cut -c 1-10)
y = (date | cut -c 25-28)
echo $dm$y
