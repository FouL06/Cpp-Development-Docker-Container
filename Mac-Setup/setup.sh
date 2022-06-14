#!/bin/bash
# Author: Ashton Foulger, https://github.com/FouL06
# Organization: N/A
# Date: 6/14/22
# Version: 0.1

# Create assignments Directory
cd ~
cd Documents/
mkdir DockerImages
cd DockerImages/
mkdir assignments
cd assignments/

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