# Aseprite :space_invader: Windows :computer: Docker :whale2: Build :gear:

This repository aims to make the complicated process of compiling [Aseprite](https://github.com/aseprite/aseprite) more simple.

Consider buying Aseprite to support the devs: https://www.aseprite.org/

## Usage

Download this repo and run `start.bat`. (this can take >30 minutes)

Now you should see a folder called `bin/` and in it the Aseprite binaries!

### Prerequisites

- OS: Windows 10 (Version 2004 or newer) Pro/Enterprise
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
  - **Use Windows containers**: Right click on the Docker tray icon -> Switch to Windows containers...
- At least 30GB of free disk space

## Remarks

- The docker image is based on [abrarov/msvc-2022:2.15.0](https://hub.docker.com/r/abrarov/msvc-2022) which includes...
  - Visual Studio Community 2022
  - cmake v3.24.1
  - Ninja v1.11.0

## Troubleshooting

### Error: Unable to find image 'eddex/aseprite:latest' locally

- Make sure you have enought free disk space (>30GB)
- Make sure you're using Windows containers

### Supported Windows editions

- Windows 10 Profesional & Enterprise
- Windows 11 Pro & Enterprise
- Windows 10/11 Home can't be used, see [Windows Container System Requirements](https://learn.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/system-requirements#operating-system-requirements)
