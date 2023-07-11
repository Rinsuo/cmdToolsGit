@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe !link! -f bestaudio --no-abort-on-error --wait-for-video 10 --remux-video mkv --concurrent-fragments 4

echo finished
goto start
