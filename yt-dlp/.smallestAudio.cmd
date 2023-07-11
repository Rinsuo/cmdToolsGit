@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe -f wa[vcodec=none] -S "+filesize" !link! --no-abort-on-error --wait-for-video 10 --concurrent-fragments 4

echo finished
goto start
