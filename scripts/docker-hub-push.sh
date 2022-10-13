#!/bin/bash

TAG=${1:-latest}

# docker push command -> https://docs.docker.com/engine/reference/commandline/push/
docker push kellyedge/web-app:$TAG