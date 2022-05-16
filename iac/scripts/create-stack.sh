#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
REGION=us-east-2

aws --region $REGION cloudformation create-stack \
--stack-name "kelly-ecs-stack" \
--template-body "file://$SCRIPT_DIR/../template.yaml" \
--capabilities "CAPABILITY_NAMED_IAM" \
--parameters \
ParameterKey=ClusterName,ParameterValue="kelly-ecs-cluster" \
ParameterKey=EC2ImageId,ParameterValue="ami-0f600e3ccbb2dd300" \
ParameterKey=EC2InstanceType,ParameterValue="t2.medium" \
ParameterKey=ServiceName,ParameterValue="kelly-ecs-service" \
ParameterKey=RoleName,ParameterValue="kelly-ecs-role" \
ParameterKey=KeyPairName,ParameterValue="kelly-keypair" \
ParameterKey=ContainerImage,ParameterValue="kellyedge/web-app:v9" \
ParameterKey=LaunchConfigurationName,ParameterValue="kelly-launch-config1" \
ParameterKey=SubnetIds,ParameterValue="subnet-8852e0e3\, subnet-ef2b78a3\, subnet-c87b93b5" \
ParameterKey=AutoScalingGroupMinSize,ParameterValue="2" \
ParameterKey=AutoScalingGroupMaxSize,ParameterValue="2" \
ParameterKey=VpcId,ParameterValue="vpc-9fb339f4" \
ParameterKey=ContainerServiceDesiredCount,ParameterValue="2" \
ParameterKey=ALBListenerPort,ParameterValue="80" \
ParameterKey=ALBListenerProtocol,ParameterValue="HTTP" \
ParameterKey=ECSHostPort,ParameterValue="80" \
ParameterKey=ECSContainerPort,ParameterValue="80" \
ParameterKey=ECSTaskMemory,ParameterValue="512"
