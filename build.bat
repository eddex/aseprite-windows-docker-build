echo "download skia binaries"
cd C:\
mkdir deps
cd deps
mkdir skia
cd skia
powershell -command "wget -UseBasicParsing -OutFile skia.zip https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Windows-Release-x64.zip"
powershell -command "Expand-Archive -Path .\skia.zip -DestinationPath ."

echo "switch to VS dev cmd"
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=x64

echo "build aseprite"
cd C:\
git clone --recursive https://github.com/aseprite/aseprite.git
cd aseprite
git fetch --tags
git pull
git checkout v1.3.9
git submodule update --init --recursive
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLAF_BACKEND=skia -DSKIA_DIR=C:\deps\skia -DSKIA_LIBRARY_DIR=C:\deps\skia\out\Release-x64 -DSKIA_LIBRARY=C:\deps\skia\out\Release-x64\skia.lib -G Ninja ..
ninja aseprite
