@echo off
SETLOCAL EnableDelayedExpansion
echo enter blank to skip
echo current total bitrate: (wait)
for %%A in (%*) DO ..\ffprobe.exe -v quiet -select_streams v:0 -show_entries stream=bit_rate -of default=noprint_wrappers=1:nokey=1 %%A

:start
set /p usetemp= "use template?(y): "
if "!usetemp!"=="y" goto templates

set /p isaudio= "is only audio?(y): "
if "!isaudio!"=="y" goto yaudio
if "!isaudio!"=="" goto naudio

echo field only accepts blank or y
goto start

:yaudio
echo (you have selected audio only)
set /p aBitrate= enter audio bitrate(45k,100K,1M,etc): 
for %%A in (%*) DO ..\ffmpeg.exe -i %%A -c:a libopus -b:a !aBitrate! "new_%%~nxA"
goto end

:naudio
set /p vBitrate= enter video bitrate(2k,100K,1M,etc): 
set /p aBitrate= enter audio bitrate(500,10k,1M,etc): 
for %%A in (%*) DO ..\ffmpeg.exe -i %%A -b:v !vBitrate! -c:a libopus -b:a !aBitrate! "new_%%~nxA"
goto end

:templates
echo 1. shittify

if "!isaudio!"=="y" goto yaudio
set /p tempnum= "select template(number): "

REM : shittify
if "!tempnum!"=="1" FOR %%A IN (%*) DO ..\ffmpeg.exe -i %%A -b:v 2k -c:a libopus -ac 1 -b:a 500 "new_%%~nxA"

:end
echo finished
pause
