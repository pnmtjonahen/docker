FROM java:alpine

ENV DERBY_INSTALL=/db-derby-10.12.1.1-bin
ENV DERBY_HOME=/db-derby-10.12.1.1-bin
ENV CLASSPATH=/$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:.

COPY db-derby-10.12.1.1-bin.tar.gz db-derby-10.12.1.1-bin.tar.gz


RUN \
  tar xzf db-derby-10.12.1.1-bin.tar.gz &&\
  rm -Rf /db-derby-10.12.1.1-bin.tar.gz &&\
  mkdir -p /dbs &&\
  mkdir -p /dbbackup &&\
  mkdir -p /upload 

VOLUME ["/dbs"]
EXPOSE 1527
WORKDIR /dbs
CMD /db-derby-10.12.1.1-bin/bin/NetworkServerControl start -h 0.0.0.0 -p 1527