@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe -f "bv[height=720]+ba[abr<100]" -S "abr,+size" !link! --no-abort-on-error --wait-for-video 10 --concurrent-fragments 4

echo finished
goto start
