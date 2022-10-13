#!/bin/bash

TAG=${1:-latest}

# docker pull command -> https://docs.docker.com/engine/reference/commandline/pull/
docker pull kellyedge/web-app:$TAG