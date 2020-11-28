@echo off
Goto start


:setup

echo Downloading YT-DL
curl -L https://yt-dl.org/downloads/2020.11.26/youtube-dl.exe -o youtube-dl.exe -s






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
if not exist youtube-dl.exe goto setup

:c
echo "Please set the youtube link"
set /p vid="link>>>"



call youtube-dl.exe "%vid%"

pause