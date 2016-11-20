FROM node:7.1.0-alpine

MAINTAINER Manuel Rueda <manuel.rueda.un@gmail.com>

RUN apk add --no-cache python make g++
RUN npm install -g scuttlebot@9.2.4

ADD run-server.sh /run-server.sh
RUN chmod +x /run-server.sh

EXPOSE 8008

CMD [ "/run-server.sh" ]
