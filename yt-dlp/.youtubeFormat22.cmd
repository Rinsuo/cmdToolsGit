@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe !link! -f 22 --embed-thumbnail --no-playlist --wait-for-video 10 --concurrent-fragments 4

echo finished
goto start
