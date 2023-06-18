@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe -S "res:720,abr,+size" !link! --no-abort-on-error --wait-for-video 10

echo finished
goto start
