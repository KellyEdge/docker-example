#!/bin/bash

TAG=${1:-latest}

# docker login command -> https://docs.docker.com/engine/reference/commandline/login/
docker login --username=kellyedge

# docker pull command -> https://docs.docker.com/engine/reference/commandline/pull/
docker pull kellyedge/web-app:$TAG