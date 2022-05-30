#!/bin/bash

## desc: gets directories only
## usage: ./ls_directories_only.sh

ls -l | grep "^d"
