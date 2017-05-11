FROM ubuntu:17.04

MAINTAINER Chris Jones

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update; \
    apt-get -y install apt-utils; \
    apt-get -y install npm nodejs-legacy git libavahi-compat-libdnssd-dev; \
    git config --global url."https://".insteadOf git://; \
    npm install -g --unsafe-perm homebridge homebridge-nest homebridge-harmonyhub homebridge-cmdswitch2 homebridge-ifttt

CMD ["/usr/local/bin/homebridge"]
VOLUME /root/.homebridge
VOLUME /var/run/dbus

