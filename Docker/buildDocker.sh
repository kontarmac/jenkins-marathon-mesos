#!/usr/bin/env bash
set -e
docker login -u carlos.gonz.cantalapiedra@gmail.com -p $DOCKERHUB_PASSWORD
docker build -t carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$BUILD_NUMBER .
docker push carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$BUILD_NUMBER