echo "download skia binaries"
cd C:\
mkdir deps
cd deps
mkdir skia
cd skia
powershell -command "wget -UseBasicParsing -OutFile skia.zip https://github.com/aseprite/skia/releases/download/m81-b607b32047/Skia-Windows-Release-x64.zip"
powershell -command "Expand-Archive -Path .\skia.zip -DestinationPath ."

echo "switch to VS dev cmd"
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" -arch=x64

echo "build ninja"
cd C:\
git clone https://github.com/ninja-build/ninja.git
cd .\ninja\
git fetch --tags
git checkout v1.10.1
mkdir build-cmake
cd build-cmake
cmake ..
cmake --build .

echo "build laf"
cd C:\
git clone https://github.com/aseprite/laf.git
cd laf
git checkout 9c3092901416ed0aef85b49f33ad514c7988cfa4
git submodule update --init --recursive
mkdir build
cd build
cmake -G Ninja -DLAF_BACKEND=skia -DSKIA_DIR=C:\deps\skia -DSKIA_LIBRARY_DIR=C:\deps\skia\out\Release-x64 -DLAF_WITH_EXAMPLES=OFF -DLAF_WITH_TESTS=OFF ..
ninja

echo "build aseprite"
cd C:\
git clone --recursive https://github.com/aseprite/aseprite.git
cd aseprite
git fetch --tags
git pull
git checkout v1.2.25
git submodule update --init --recursive
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLAF_BACKEND=skia -DSKIA_DIR=C:\deps\skia -DSKIA_LIBRARY_DIR=C:\deps\skia\out\Release-x64 -G Ninja ..
ninja aseprite