#!/bin/bash

## usage: ./getcurrentlyloggedinusers.sh
## description: gets currently logged in users
## works on: macOS Monterey
## fails on: 

who | cut -c 1-16,26-38
