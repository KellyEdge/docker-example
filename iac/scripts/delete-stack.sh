#!/bin/bash

REGION=us-east-2

aws --region $REGION cloudformation delete-stack --stack-name "kelly-ecs-stack"