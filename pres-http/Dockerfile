# tjonahen/http-server
# node image with a http server installed
# docker build -t tjonahen/pres-server .
# VERSION 1.0.0

FROM node
MAINTAINER Philippe Tjon-A-Hen <philippe@tjonahen.nl>
RUN npm install http-server -g
RUN mkdir /presentations
WORKDIR /presentations
VOLUME /presentations
EXPOSE 80
ENTRYPOINT http-server -p 80 -c-1
