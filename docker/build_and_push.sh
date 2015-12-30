#!/bin/bash

set -e

if [ $TRAVIS_BRANCH="master" ]; then
  tag=latest
else
  tag=$TRAVIS_BRANCH
fi

docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker build -t $tag .
docker push $tag
