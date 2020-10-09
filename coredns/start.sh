#!/bin/bas
docker run -d --name coredns --restart=always --volume=`pwd`/coredns/:/root/ -p 53:53/udp coredns/coredns -conf /root/Corefile
