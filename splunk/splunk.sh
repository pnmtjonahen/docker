#!/bin/bash
docker run -d -p 8000:8000 -v /etc/localtime:/etc/localtime:ro --network=local-sb-network -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=admin1234" --name splunk splunk/splunk:latest
