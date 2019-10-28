#!/bin/sh

docker run --network=local-sb-network -d -p 9000:9000 --name sonarqube -v sonarqube_conf:/opt/sonarqube/conf -v sonarqube_data:/opt/sonarqube/data -v /home/ordina/docker/sonarqube/logs:/opt/sonarqube/logs -v sonarqube_extentions:/opt/sonarqube/extensions sonarqube
