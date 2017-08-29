#!/usr/bin/env bash
set -e
docker login -u carlos.gonz.cantalapiedra@gmail.com -p $DOCKER_PASSWORD
docker build -t carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$BUILD_NUMBER .
docker push carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$BUILD_NUMBER