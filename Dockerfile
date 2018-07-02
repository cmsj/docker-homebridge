FROM node:latest

MAINTAINER Chris Jones

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update; \
    apt-get -y install apt-utils; \
    apt-get -y install npm nodejs-legacy git; \
    git config --global url."https://".insteadOf git://; \
    npm install -g --unsafe-perm homebridge homebridge-nest homebridge-arlo homebridge-dummy homebridge-linux-temperature

CMD ["/usr/local/bin/homebridge"]
VOLUME /root/.homebridge

