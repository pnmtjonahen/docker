FROM java:alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)

ENV DERBY_INSTALL=/db-derby-10.12.1.1-bin
ENV DERBY_HOME=/db-derby-10.12.1.1-bin
ENV CLASSPATH=/$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:.


RUN apk add --update wget &&\
  wget http://apache.mirror.iphh.net//db/derby/db-derby-10.12.1.1/db-derby-10.12.1.1-bin.tar.gz &&\ 
  tar xzf db-derby-10.12.1.1-bin.tar.gz &&\
  rm -Rf /db-derby-10.12.1.1-bin.tar.gz &&\
  mkdir -p /dbs &&\
  mkdir -p /dbbackup &&\
  mkdir -p /upload &&\
  rm -rf /var/cache/apk/*

VOLUME ["/dbs"]
EXPOSE 1527
WORKDIR /dbs
CMD /db-derby-10.12.1.1-bin/bin/NetworkServerControl start -h 0.0.0.0 -p 1527