#!/bin/sh

## desc: gets the Mac OSX System Cores
## usage: ./get-system-cpu-cores.sh

system_profiler SPHardwareDataType | grep Cores: | tr -d " "