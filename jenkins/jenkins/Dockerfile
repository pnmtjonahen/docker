# jenkins:latest
# maven:3.3.9
# 
FROM jenkins

# configure maven installation in jenkins
COPY maven-config.groovy /usr/share/jenkins/ref/init.groovy.d/maven-config.groovy

# configure jdk configuration in jenkins
COPY jdk-config.groovy /usr/share/jenkins/ref/init.groovy.d/jdk-config.groovy

# copy and configure extra jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

# as root install maven
ENV MAVEN_VERSION 3.3.9
USER root

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn


USER jenkins
# set maven home
ENV MAVEN_HOME /usr/share/maven

# set java home
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
