#!/bin/sh

## desc: gets Mac OSX System Memory
## usage: ./get-system-memory.sh

system_profiler SPHardwareDataType | grep "  Memory:" | tr -d " "
