@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe !link! --concurrent-fragments 4

echo finished
goto start
