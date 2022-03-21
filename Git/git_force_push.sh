#!/bin/sh

## usage: ./git_force_push.sh
## description: force push can override existing history and should be used with caution

git push -u origin master -f
