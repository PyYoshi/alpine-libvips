#!/bin/bash

VIPS_VERSION='8.4.5'

# docker images -q | xargs docker rmi -f

docker build -t pyyoshi/alpine-libvips:latest -t pyyoshi/alpine-libvips:$VIPS_VERSION .
docker push pyyoshi/alpine-libvips:latest
docker push pyyoshi/alpine-libvips:$VIPS_VERSION

# docker run -i -t pyyoshi/alpine-libvips:latest /bin/sh
