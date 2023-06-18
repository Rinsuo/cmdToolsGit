@echo off
setlocal EnableDelayedExpansion
:start
set /p link= Enter link: 
..\yt-dlp.exe -F !link!
set /p format= Enter format(green number on left): 
..\yt-dlp.exe !link! -f !format! --embed-thumbnail --no-playlist --wait-for-video 10

echo finished
goto start
