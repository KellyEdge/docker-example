#!/bin/bash

TAG=${1:-latest}

# docker run command -> https://docs.docker.com/engine/reference/commandline/run/
docker run -d -p 8080:80 kellyedge/web-app:$TAG
