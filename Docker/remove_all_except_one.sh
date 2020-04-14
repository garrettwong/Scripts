#!/bin/sh

EXCEPT_CONTAINER_MATCH="mysql"

docker stop $(docker ps -a | grep -v "mysql" | awk 'NR>1 {print $1}')
docker rm $(docker ps -a | grep -v "mysql" | awk 'NR>1 {print $1}')
