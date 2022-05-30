#!/usr/bin/env bash

if ! command -v gh &> /dev/null
then
    echo "gh could not be found.  It will attempt to be installed view brew install gh"
    brew install gh
    exit
fi


OWNER=garrettwong
eval $(ssh-agent)
ssh-add

gh repo list $OWNER --limit 1000 | awk '{print $1; }' | xargs -L1 gh repo clone

