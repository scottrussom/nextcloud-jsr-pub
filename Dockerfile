# https://github.com/wsargent/docker-cheat-sheet#dockerfile

ARG ARCH=

# REQUIRED getting base image for nextcloud
# FROM nextcloud:apache

# OPTIONAL
# RUN apt-get update -y && apt-get install -y procps smbclient && rm -rf /var/lib/apt/lists/*

# REQUIRED only runs when container starts
# CMD ["echo", "hello world!"]
# CMD /bin/bash

ARG ARCH=
FROM ${ARCH}debian:buster-slim

RUN apt-get update \
&& apt-get install -y curl \
&& arch \
&& whoami \
&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "curl" ]
