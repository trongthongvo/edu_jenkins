#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u trongthongvo -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG trongthongvo/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push trongthongvo/$IMAGE:$BUILD_TAG
