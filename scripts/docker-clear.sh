#!/bin/bash

#remove all containers
docker rm -f $(docker ps -a -q)  

#remove all images
docker images | tail -n +2 | tr -s " " | cut -d " " -f 3  | xargs docker rmi -f