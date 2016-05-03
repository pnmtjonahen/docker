#!/bin/sh
curl -X POST "http://localhost:8081/createItem?name=abk" --data-binary "@abk.xml" -H "Content-Type: text/xml"
curl -X POST "http://localhost:8081/createItem?name=abk-sonar" --data-binary "@abk-sonar.xml" -H "Content-Type: text/xml"
curl -X POST "http://localhost:8081/createItem?name=abk-pipeline" --data-binary "@abk-pipeline.xml" -H "Content-Type: text/xml"