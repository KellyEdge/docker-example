#!/bin/bash

TAG=${1:-latest}

# docker run command -> https://docs.docker.com/engine/reference/commandline/run/
docker run -d -p 80:80 kellyedge/web-app:$TAG
