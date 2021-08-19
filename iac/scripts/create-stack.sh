#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
REGION=us-east-2

aws --region $REGION cloudformation create-stack \
--stack-name "kelly-ecs-stack" \
--template-body "file://$SCRIPT_DIR/../template.yaml" \
--capabilities "CAPABILITY_NAMED_IAM" \
--parameters \
ParameterKey=ClusterName,ParameterValue="kelly-ecs-cluster" \
ParameterKey=EC2ImageId,ParameterValue="ami-06e650acd294da294" \
ParameterKey=EC2InstanceType,ParameterValue="t2.medium" \
ParameterKey=ServiceName,ParameterValue="kelly-ecs-service" \
ParameterKey=RoleName,ParameterValue="kelly-ecs-role" \
ParameterKey=KeyPairName,ParameterValue="kelly-keypair" \
ParameterKey=ContainerImage,ParameterValue="kellyedge/web-app:latest"
