@echo off
setlocal EnableDelayedExpansion
:start
set /p browser= Enter browser name:
set /p link= Enter link: 
..\yt-dlp.exe --cookies-from-browser !browser! !link! --concurrent-fragments 4

echo finished
goto start
