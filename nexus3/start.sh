#!/bin/sh

docker run --network=local-sb-network -d -p 18081:8081 -p 18082:8082 -p 18083:8083 -v nexus3_data:/nexus-data --name nexus3 sonatype/nexus3:3.18.1
