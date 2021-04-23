#!/bin/sh
docker run \
    --network=local-sb-network \
    docker.elastic.co/beats/filebeat:7.12.0 \
    setup -E setup.kibana.host=kibana:5601 \
    -E output.elasticsearch.hosts=["elasticsearch:9200"]