FROM java:alpine
MAINTAINER Philippe Tjon-A-Hen (philippe@tjonahen.nl)


RUN wget http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.25.1/wiremock-standalone-2.25.1.jar
EXPOSE 8888

CMD java -jar wiremock-standalone-2.25.1.jar -port 8888 -verbose
