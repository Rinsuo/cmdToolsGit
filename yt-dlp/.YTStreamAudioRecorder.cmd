@echo off
setlocal EnableDelayedExpansion
set /p link= Enter link: 
..\yt-dlp.exe !link! -f bestaudio --no-abort-on-error --no-playlist --live-from-start --wait-for-video 10

echo finished
COLOR 02
pause