#!/bin/bash

set -e
set -x

docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker build -t $TRAVIS_BRANCH .
docker push $TRAVIS_BRANCH
