# docker-homebridge

This is a very simple containerisation of Homebridge.

## Aims

I wanted Homebridge to be running in a container, but use the host's Avahi daemon for its announcements.

## Install

Pull the image (or build from the Dockerfile) and run the container with ```--privileged --net=host -v /path/to/homebridge/config:/root/.homebridge -v /var/run/dbus:/var/run/dbus```

## Details

The base image is Ubuntu 17.04, and the following Homebridge plugins are installed:

 * Nest
 * Arlo
