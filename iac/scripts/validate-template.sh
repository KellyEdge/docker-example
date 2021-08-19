#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
REGION=us-east-2

aws --region $REGION cloudformation validate-template --template-body file://$SCRIPT_DIR/../template.yaml