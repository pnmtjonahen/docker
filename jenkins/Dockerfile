# jenkins:latest
# maven:3.3.9
# 
FROM jenkins

# set java home update jaxp properties to allow xsd from file system
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
COPY jaxp.properties $JAVA_HOME/jre/lib

# copy additional configuration scripts
COPY *.groovy /usr/share/jenkins/ref/init.groovy.d/

# copy and configure extra jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

USER root

# Install maven
ENV MAVEN_VERSION 3.3.9

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

  
# Install SonarQube runner

ENV SONAR_RUNNER_VERSION 2.4
ENV SONAR_RUNNER_HOME /usr/share/sonar-runner-${SONAR_RUNNER_VERSION}
ENV SONAR_RUNNER_PACKAGE sonar-runner-dist-${SONAR_RUNNER_VERSION}.zip

WORKDIR /usr/share

RUN wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/${SONAR_RUNNER_VERSION}/${SONAR_RUNNER_PACKAGE} \
 && unzip sonar-runner-dist-${SONAR_RUNNER_VERSION}.zip \
 && rm ${SONAR_RUNNER_PACKAGE} 

USER jenkins
# set maven home
ENV MAVEN_HOME /usr/share/maven

