@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe -f wa !link! --no-abort-on-error --wait-for-video 10

echo finished
goto start
