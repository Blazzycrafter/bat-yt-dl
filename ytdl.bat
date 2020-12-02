@echo off
color 0f
Goto start


:setup
::check if curl installed if no install it
if not exist "C:\Windows\System32\curl.exe" (

color 0c
echo.
echo.
echo: ATTENTION: Curl was not found please update your windows system or install curl manuelly:
echo: https://curl.se/windows/dl-7.73.0_3/curl-7.73.0_3-win64-mingw.zip
pause
pause
pause
cls
color 0f





)
echo Downloading YT-DL
curl -L https://yt-dl.org/downloads/2020.11.26/youtube-dl.exe -o youtube-dl.exe -s






Goto c
:InstallCurl

:start
setlocal

if not exist youtube-dl.exe goto setup

:c
echo Please set the youtube link
set /p vid="link>>>"



call youtube-dl.exe "%vid%"
echo Video downloaded
pause