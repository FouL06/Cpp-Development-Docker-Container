# C++ & Rust Development Docker Image
Designed to automate and unify docker image setup for my CS 3505 class at the University of Utah. Scripts are designed for both MacOS, and Windows enviorments. The scripts will automatically create the nessesary file structure needed for a persistent volumn that docker can then use for saving of course work. The script will automatically create the Dockerfile with all nessesary packages needed for the development enviorment; including, make, gcc, gdb, git, vim or nano, and bash-completion.

## Prerequisites that need to be installed

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
