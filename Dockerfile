# https://github.com/wsargent/docker-cheat-sheet#dockerfile

ARG arch=armhf

# REQUIRED getting base image for nextcloud
FROM nextcloud:apache

# OPTIONAL
RUN apt-get update -y && apt-get install -y procps smbclient && rm -rf /var/lib/apt/lists/*

# REQUIRED only runs when container starts
# CMD ["echo", "hello world!"]
# CMD /bin/bash
