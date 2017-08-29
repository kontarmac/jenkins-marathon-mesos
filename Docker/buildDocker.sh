#!/usr/bin/env bash
set -e
docker login -u carlosgonzalezcantalapiedra -p $1
docker build -f carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$2 .
docker push carlosgonzalezcantalapiedra/jenkins-marathon-mesos:$2
