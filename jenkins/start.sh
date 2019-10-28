#!/bin/sh
docker run --network=local-sb-network -d -u root -p 18080:8080 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name jenkins jenkinsci/blueocean
