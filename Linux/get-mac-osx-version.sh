#!/bin/bash

## usage: ./get-mac-osx-version.sh
## description: gets the Mac OSX Version
## works on: MacOS
## fails on:

defaults read loginwindow SystemVersionStampAsString | tr -d " "
