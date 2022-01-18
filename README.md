# Docker-Container-Setup
Powershell automation script designed for my 3505 class at the University of Utah. Installs all components required for Docker to run on a windows computer, configuring Windows subsystem for linux allowing docker containers to run linux distributions. Installed Docker if the users computer does not already have it, and creates required docker files and directories to be used by docker. For live testing, I have included a simple volume for the docker container to use to which users can store and create files live that the docker container will then use for storing of persistent files. Powershell will then run all commands required for docker to build and then run the container.

# Tech-Stack
- Windows Subsystem for Linux
- Docker Desktop
- CPU vitualization enabled in BIOS
- Remote Docker Extension for Visual Studio Code: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers
- PowerShell

# How to Run Container in Visual Studio:
1. Open Visual Studio
2. Go to File -> Open Folder -> DockerImages/assignments found in documents folder 
3. Press F1 and type remote-container to open file (dont select any folders inside assignments.
4. Docker Container for Visual Studio will then build and run.
5. You will know when you see root@'some-number'# in the terminal in visual studio.

# Docker-Compose-Commands
How to build your docker-container incase you forget. Follow these commands, and make sure you are in your DockerImages Directory.

- `cd ./Documents/DockerImages/`
- `docker-compose build` 
- `docker-compose start`
