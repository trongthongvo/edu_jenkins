#!/bin/bash

# Copy the new jar to the build location
cp -f pipeline6/java-app/target/*.jar pipeline6/jenkins/build/
echo "copied"
ll -la pipeline6/jenkins/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

pwd
ls -la
cd pipeline6/jenkins/build/
pwd
ls -la
docker ps -a
docker images
docker-compose -f docker-compose-build.yml build #--no-cache
