# Aseprite :space_invader: Windows :computer: Docker :whale2: Build :gear:

This repository aims to make the complicated process of compiling [Aseprite](https://github.com/aseprite/aseprite) more simple.

Consider buying Aseprite if you want to support the devs: https://www.aseprite.org/

## Prerequisites

- OS: Windows 10 (Version 2004)
- Docker Desktop
    - Use Windows containers: Right click on the tray icon -> Switch to Windows containers...

## Usage

1. download this repo: `git clone git@github.com:eddex/aseprite-windows-docker-build.git`
2. `cd aseprite-windows-docker-build`
3. build the docker image: `docker build -t eddex/aseprite .`
4. create a container from the image: `docker run -d eddex/aseprite cmd` (this prints the container id)
6. copy the Aseprite binaries: `docker cp <CONTAINER_ID>:aseprite\build\bin\ .\bin\`

Now you should see a folder called `bin/` and in it the Aseprite binaries!