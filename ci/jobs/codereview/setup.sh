#!/bin/sh
curl -X POST "http://localhost:8081/createItem?name=codereview" --data-binary "@config.xml" -H "Content-Type: text/xml"
