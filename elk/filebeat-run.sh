#!/bin/sh
docker run -d \
  --name=filebeat \
  --user=root \
  --network=local-sb-network \
  --volume="$(pwd)/filebeat/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro" \
  --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --volume="/var/log/ufw.log:/var/log/host-iptables.log:ro" \
  docker.elastic.co/beats/filebeat:7.12.0 filebeat -e -strict.perms=false \
  -E output.elasticsearch.hosts=["elasticsearch:9200"]