@echo off
Goto start


:setup

echo Downloading YT-DL
curl -L https://yt-dl.org/downloads/2020.11.26/youtube-dl.exe -o youtube-dl.exe -s
echo Downloading ffmpeg
curl -LJ https://github.com/GyanD/codexffmpeg/releases/download/4.3.1-2020-11-19/ffmpeg-4.3.1-2020-11-19-full_build.zip -o ffmpeg.zip -s

echo Extracting ffmpeg
powershell Expand-Archive ffmpeg.zip -DestinationPath ffmpeg >nul





Goto c
:InstallCurl

:start
setlocal
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if not exist ffmpeg/ffmpeg-4.3.1-2020-11-19-full_build/bin/ffmpeg.exe goto setup
if not exist youtube-dl.exe goto setup

:c
echo "Please set the youtube link"
set /p vid="link>>>"



call youtube-dl.exe "%vid%"

pause