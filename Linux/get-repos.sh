#!/bin/bash

## usage: get-repos.sh [username]
## descriptiopn: Script to get all repositories under a user from bitbucket
## works on: 
## fails on: 
 
curl --insecure -u ${1} https://api.bitbucket.org/1.0/users/${1} > repoinfo
# curl -u adomingues https://api.bitbucket.org/1.0/users/adomingues
# cat repoinfo
 
for repo_name in `cat repoinfo | sed -r 's/("name": )/\n\1/g' | sed -r 's/"name": "(.*)"/\1/' | sed -e 's/{//' | cut -f1 -d\" | tr '\n' ' '`
do
    echo "Cloning " $repo_name
    git clone https://${1}@bitbucket.org/${1}/$repo_name
    echo "---"
done