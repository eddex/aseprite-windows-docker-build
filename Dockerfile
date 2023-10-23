# escape=`

FROM abrarov/msvc-2022:2.15.0

COPY build.bat C:\

RUN C:\build.bat
