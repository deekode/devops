#!/bin/bash

VERSION=$(date +%Y.%m.%d.%H.%M)

IMAGE=deekode/survey-app

docker build -t $IMAGE:$VERSION .

docker login --username=$DOCKER_USER --password=$DOCKER_PASS 

docker push $IMAGE:"$VERSION"