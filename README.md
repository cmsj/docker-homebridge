# docker-homebridge

This is a very simple containerisation of Homebridge.

## Aims

I wanted Homebridge to be running in a container. I used to want it to use the host's Avahi daemon to do announcements, but Homebridge doesn't talk to Avahi anymore and instead runs its own mDNS stack.

## Install

Pull the image (or build from the Dockerfile) and run the container with ```--privileged --net=host -v /path/to/homebridge/config:/root/.homebridge```

## Details

The base image is Node, and the following Homebridge plugins are installed:

 * Nest
 * Arlo
