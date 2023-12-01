@echo off
echo Building Aseprite using Docker
docker build -t eddex/aseprite .

echo Copy Aseprite from Docker container
docker run -d --name aseprite eddex/aseprite cmd
docker stop aseprite
docker cp aseprite:aseprite\build\bin .
docker rm aseprite
docker rmi eddex/aseprite

echo Done