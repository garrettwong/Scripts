#!/bin/sh

docker ps -aq | xargs docker rm
