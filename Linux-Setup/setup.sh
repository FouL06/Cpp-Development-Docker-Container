#!/bin/bash
# Author: Ashton Foulger, https://github.com/FouL06
# Organization: N/A
# Date: 6/15/22
# Version: 0.1

# Create assignments Directory
cd ~
mkdir DockerImages
cd DockerImages/
mkdir assignments
cd assignments/

# Pull debian docker image
docker pull debian

# Create Dockerfile
cat > Dockerfile << EOF
FROM debian:latest
RUN apt update && apt install -y \
bash-completion \
build-essential \
vim \
nano \
git \
gdb
VOLUME /assignments
WORKDIR /assignments
EOF

# Run VScode
code .