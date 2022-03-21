#!/bin/sh

docker rmi $(docker images -a -q)
