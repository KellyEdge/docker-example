#!/bin/bash

TAG=${1:-latest}

# docker login command -> https://docs.docker.com/engine/reference/commandline/login/
docker login --username=kellyedge

# tag the image (add your docker hub repository namespace)
# docker tag command -> https://docs.docker.com/engine/reference/commandline/tag/
# docker tag web-app kellyedge/web-app

# docker push command -> https://docs.docker.com/engine/reference/commandline/push/
docker push kellyedge/web-app:$TAG