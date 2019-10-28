FROM openjdk:13-alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

ENV DERBY_VERSION=db-derby-10.15.1.3
ENV DERBY_INSTALL=${DERBY_VERSION}-bin
ENV DERBY_HOME=/${DERBY_VERSION}-bin
ENV CLASSPATH=/${DERBY_INSTALL}/lib/derby.jar:/${DERBY_INSTALL}/lib/derbytools.jar:.


RUN  wget http://apache.mirror.iphh.net/db/derby/${DERBY_VERSION}/${DERBY_VERSION}-bin.tar.gz &&\
  tar xzf ${DERBY_VERSION}-bin.tar.gz &&\
  rm -Rf /${DERBY_VERSION}-bin.tar.gz &&\
  mkdir -p /dbs &&\
  mkdir -p /dbbackup &&\
  mkdir -p /upload

VOLUME ["/dbs"]
EXPOSE 1527
WORKDIR /dbs
CMD /${DERBY_INSTALL}/bin/NetworkServerControl start -h 0.0.0.0 -p 1527
