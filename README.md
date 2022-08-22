# C++ Development Docker Image

Designed to automate and unify docker image setup for my CS 3505 class at the University of Utah. Scripts are designed for both MacOS,Windows, and Linux enviroments. The scripts will automatically create the nessesary file structure needed for a persistent volumn that docker can then use for saving of course work. The script will automatically create the Dockerfile with all nessesary packages needed for the development enviroment; including, make, gcc, gdb, git, vim or nano, and bash-completion.

## Prerequisites that need to be installed

- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install) <b>Note:</b> WSL is only needed for Windows and is installed with the setup.ps1 script, however you will need to have cpu virtualization turned on in your BIOS settings for it to work.
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [VScode](https://code.visualstudio.com/Download)
- [Remote-Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) <b>Note:</b> Remote-Containers can also be installed from within VScode's extensions tab.

## Download and Run setup scripts

<b>Note:</b> If on Windows please make sure you have cpu virtualization turned on in the bios and then proceed with these steps

#### Windows

1. Install VScode, Remote-Containers, and Docker Desktop
2. In powershell run `.\setup.ps1`
3. VScode should have already started up for you, press F1 and type in `Remote-Containers: Open Configuration File...`
4. Select `From 'Dockerfile'` <b>Note:</b> if a popup comes up in VScode about reopening the devcontainer file click Reopen to start working inside the docker container.

#### Mac

1. Install VScode, Remote-Containers, and Docker Desktop
2. In a terminal make the `setup.sh` and executable by running `chmod +x setup.sh`
3. Next run `./setup.sh`
4. VScode should have already started up for you, press F1 and type in `Remote-Containers: Open Configuration File...`
5. Select `From 'Dockerfile'` <b>Note:</b> if a popup comes up in VScode about reopening the devcontainer file click Reopen to start working inside the docker container.

#### Linux

1. Install, VScode, Remote-Containers, and Docker Desktop \*(if nessesary)
2. In a terminal make the `setup.sh` and executable by running `chmod +x setup.sh`
3. Next run `./setup.sh`
4. VScode should have already started up for you, press F1 and type in `Remote-Containers: Open Configuration File...`
5. Select `From 'Dockerfile'` <b>Note:</b> if a popup comes up in VScode about reopening the devcontainer file click Reopen to start working inside the docker container.

<b>Note:</b> DO NOT MODIFY the Dockerfile or the .devcontainer folder and its contents.

<b>Note:</b> To verify that you are indeed devloping inside the docker-container open a terminal window in VScode and you should see a `root@"some-number"`

## How to Re-Open the Docker-Container

<b>Note:</b> An assignments folder should have been created on your computer under your `Documents\DockerImages\assignments` you will want to open the assignments file in VScode

1. Once the assignments folder has been opened in VScode, run `Remote-Containers: Open Configuration File...` and select `From 'Dockerfile'` like in the previous section.
2. Verify that you are using the docker-container by opening a terminal window and verify that you see `root@"some-number"`
3. Create any files and or folders you want to save inside the docker container and all of the files and folders should now be persistent as long as they are in the assignments folder.

### Happy Coding!
