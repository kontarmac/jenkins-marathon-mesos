#!/usr/bin/env bash
set -e
docker login -u carlos.gonz.cantalapiedra@gmail.com -p $1
docker build -t carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$2 .
docker push carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$2
