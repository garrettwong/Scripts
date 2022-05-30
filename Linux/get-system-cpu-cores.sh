#!/bin/bash

## usage: ./get-system-cpu-cores.sh
## description: gets the Mac OSX System Cores.  Returns 'TotalNumberofCores:6'
## works on: MacOS
## fails on:

system_profiler SPHardwareDataType | grep Cores: | tr -d " "