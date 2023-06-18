@echo off
setlocal EnableDelayedExpansion
set /p link= Enter link: 
..\yt-dlp.exe !link! --no-playlist --live-from-start --wait-for-video 10

echo finished
COLOR 02
pause