# Aseprite :space_invader: Windows :computer: Docker :whale2: Build :gear:

This repository aims to make the complicated process of compiling [Aseprite](https://github.com/aseprite/aseprite) more simple.

Consider buying Aseprite to support the devs: https://www.aseprite.org/

## Usage

Download this repo and run `start.bat`.

Now you should see a folder called `bin/` and in it the Aseprite binaries!

### Prerequisites

- OS: Windows 10 (Version 2004 or newer)
- Docker (2 options):
  - [Docker Desktop](https://www.docker.com/products/docker-desktop/)
    - **Use Windows containers**: Right click on the Docker tray icon -> Switch to Windows containers...
   or
  - [Docker CLI via scoop.sh](https://scoop.sh/#/apps?q=docker)
    - **daemon switches**: `dockerd.exe --dns 1.1.1.1`
    - change the IP above to your preffered dns

## Remarks

- The docker image is based on [abrarov/msvc-2022:2.15.0](https://hub.docker.com/r/abrarov/msvc-2022) which includes...
  - Visual Studio Community 2022
  - cmake v3.24.1
  - Ninja v1.11.0
