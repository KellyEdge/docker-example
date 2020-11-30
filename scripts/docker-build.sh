#!/bin/bash

SCRIPT_DIR=$(dirname "$0");
TAG=${1:-latest}

# docker build command -> https://docs.docker.com/engine/reference/commandline/build/
docker build --tag kellyedge/web-app:$TAG $SCRIPT_DIR/../build-context