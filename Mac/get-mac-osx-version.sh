#!/bin/sh

## desc: gets the Mac OSX Version
## usage: ./get-mac-osx-version.sh

defaults read loginwindow SystemVersionStampAsString | tr -d " "
