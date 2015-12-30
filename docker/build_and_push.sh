#!/bin/bash

set -e

docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker build -t artemave/gemstash:$TRAVIS_BRANCH .
docker push artemave/gemstash:$TRAVIS_BRANCH
