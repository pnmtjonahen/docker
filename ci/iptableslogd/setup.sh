#!/bin/sh
curl -X POST "http://localhost:8081/createItem?name=iptableslogd" --data-binary "@config.xml" -H "Content-Type: text/xml"
