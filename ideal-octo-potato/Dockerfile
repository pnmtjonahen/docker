FROM node

RUN npm install serv -g
RUN mkdir /presentations
WORKDIR /presentations
VOLUME /presentations
EXPOSE 80

CMD serv --port 80
