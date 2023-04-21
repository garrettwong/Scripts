#!/bin/sh

docker rmi $(docker images -a -q)

# `docker images` now returns empty