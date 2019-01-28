#!/bin/sh

## desc: gets Mac OSX System Processors
## usage: ./get-system-processors.sh

system_profiler SPHardwareDataType | grep Processors: | tr -d " "