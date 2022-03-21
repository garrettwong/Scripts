#!/bin/sh

## usage: ./remove_all_except_one.sh "my-container-name"

EXCEPT_CONTAINER_MATCH=${1:-"mysql"}

docker stop $(docker ps -a | grep -v "mysql" | awk 'NR>1 {print $1}')
docker rm $(docker ps -a | grep -v "mysql" | awk 'NR>1 {print $1}')
