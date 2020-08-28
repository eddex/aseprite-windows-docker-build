# escape=`

FROM abrarov/msvc-2019

COPY build.bat C:\

RUN C:\build.bat
