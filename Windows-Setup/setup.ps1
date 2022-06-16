<#
Author: Ashton Foulger, https://github.com/FouL06
Organization: N/A
Date: 6/15/2022
Version: 0.3
#>

# Install WSL & set version
wsl --install
wsl --set-default-version 2 

# Write Required Files for Docker Container
New-Item -Path $Home\Documents\DockerImages -ItemType Directory
New-File -Path $Home\Documents\DockerImages\assignments -ItemType Directory
New-Item -Path $Home\Documents\DockerImages\assignments\Dockerfile -ItemType File

# Pull debian docker image
docker pull debian

# Write DockerFile
$dockerFileText = @"
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
"@

Out-File -FilePath $Home\Documents\DockerImages\assignments\Dockerfile -InputObject $dockerFileText

# Build & Start Docker Container
cd $Home\Documents\DockerImages\assignments
code .