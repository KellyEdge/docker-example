# docker-example
This project contains...
- a Web Application
- a Docker Image
- a Container Application Hosting Platform 
- a CI/CD Deploy Pipeline Configuration

### Web Application

- the web app is a single html page located @ */build-context/html/index.html*

### Docker Image

- This project contains a DockerFile that is used to build a container image that hosts the web application mentioned above
- My container is running apache web server (httpd). I accomplished this by basing my container from [the latest apache linux (alpine) image in docker hub](https://hub.docker.com/_/httpd) (see the FROM directive in the DockerFile)
- the web application exists within the *"/build-context"* directory. This allows me to easily install my web application into the container by simply copying it to the apache web servers' default web app directory 
 within the container (see the COPY directive in the DockerFile)
- this project contains shell scripts that may be used while developing the container image on your local workstation 
 
    - `/scripts/docker-build.sh` (builds the docker image on your local workstation)
    - `/scripts/docker-run.sh` (runs the docker container on your local workstation)
    - `/scripts/docker-hub-push.sh` (pushes your local container image to docker hub)
    - `/scripts/docker-hub-pull.sh` (pulls your latest container image from docker hub)
    - `/scripts/docker-clear.sh` (helpful script deletes all docker images and running containers on your local workstation)
 
### Container Application Hosting Platform

- this project contains a CloudFormation template file @ *"/iac/template.yaml"*. This file is used to create virtual infrastructure
 in AWS cloud services

    - the template.yaml file contains the resource configuration to build my container application hosting platform (based on ECS)  
    - the template.yaml file also contains the resource configuration to run my new container image as an ECS service on the new ECS cluster
    
- this project contains shell scripts that may be used while developing the CloudFormation template on your local workstation 
 
    - `/iac/scripts/validate-stack.sh` (validates your CloudFormation template file for errors)
    - `/iac/scripts/create-stack.sh` (create the infrastructure stack in your AWS account)
    - `/iac/scripts/update-stack.sh` (update the existing infrastructure stack in your AWS account)
    - `/iac/scripts/delete-stack.sh` (delete the existing infrastructure stack in your AWS account)
    - `/iac/scripts/ssh-to-ec2.sh` (modify and use this helpful script if you want to ssh into an aws ec2 instance)
    
### CI/CD Deploy Pipeline Configuration

- this project contains a CloudFormation input param configuration file @ *"/iac/cicd-config/prod.json"*

    - an AWS CodePipeline job named *"docker-example-cf-deploy"* has been manually created in the AWS account (not using CloudFormation)
    - The CodePipeline job will clone the project repo and apply the CloudFormation template when 
    changes occur on the master branch of this github project repo

### Known Problems

- while deleting the CloudFormation stack, sometimes the command will fail because of a race condition where the ECS cluster is
not able to be deleted because some of it's child resources are still existing. When this happens, you can simply delete 
the stack a second time to remedy the problem. A proper fix would be nice though. 
    
 
### Some helpful links...
- [Docker Install (Mac)](https://docs.docker.com/docker-for-mac/install/)
- [Docker Install (Windows)](https://docs.docker.com/docker-for-windows/install/)
- [Docker Hub](https://hub.docker.com)
- [Dockerfile Documentation](https://docs.docker.com/engine/reference/builder/)
- [Dockerfile Best Practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
- [Common Docker Commands](https://www.edureka.co/blog/docker-commands/)
- [Docker build Command](https://docs.docker.com/engine/reference/commandline/build/)
- [AWS ECR Docker Basics](https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-basics.html)

