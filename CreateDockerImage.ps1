<#
Author: Ashton Foulger, https://github.com/FouL06
Organization: N/A
Date: 1/18/2022
Version: 0.1
#>

#Install WSL & set version
wsl --install
wsl --set-default-version 2 

#Install Docker Desktop
$DockerInstaller = Join-Path $Evn:Temp InstallDocker.msi
Invoke-WebRequest https://download.docker.com/win/stable/InstallDocker.msi
msiexec -i $DockerInstaller -quiet

#Write Required Files for Docker Container
New-Item -Path $Home\Documents\DockerImages -ItemType Directory
New-Item -Path $Home\Documents\DockerImages\Dockerfile -ItemType File
New-Item -Path $Home\Documents\DockerImages\docker-compose.yml -ItemType File
New-File -Path $Home\Documents\DockerImages\assignments -ItemType Directory

#Write DockerFile
$dockerFileText = @"
FROM debian:latest

RUN apt update && apt install -y \
bash-completion \
build-essential \
neovim \
gdb \
&& echo 'source /etc/bash_completion' >> ~/.bashrc
"@

Out-File -FilePath $Home\Documents\DockerImages\Dockerfile -InputObject $dockerFileText

#Write Docker Compose File
$dockerComposeFileText = @"
version: '3'

services:
  debian:
    container_name: debian
    build: ./
    image: debian:latest
    volumes:
      - "./assignments:/assignments"
    stdin_open: true
    tty: true
"@

Out-File -FilePath $Home\Documents\DockerImages\docker-compose.yml -InputObject $dockerComposeFileText

#Create DevContainer for Running Docker Image in Visual Studio
New-Item -Path $Home\Documents\DockerImages\assignments\.devcontainer -ItemType Directory
New-Item -Path $Home\Documents\DockerImages\assignments\.devcontainer\devcontainer.json -ItemType File

$devContainerText = @"
{
    "image": "debian:latest"
}
"@

Out-File -FilePath $Home\Documents\DockerImages\assignments\.devcontainer\devcontainer.json -InputObject $devContainerText

#Build & Start Docker Container
cd $Home\Documents\DockerImages
docker-compose build
docker-compose start