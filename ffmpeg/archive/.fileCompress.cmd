@echo off
SETLOCAL EnableDelayedExpansion
echo enter blank to skip
:start

set /p cCodec= "change codec?(y): "
set /p cBit= "change bitrate?(y): "
if "!cBit!"=="y" goto ybit
if "!cBit!"=="" goto nbit
echo field only accepts blank or y
goto start

:ybit
set /p vBitrate= enter video bitrate(2k,100K,1M,etc): 
set /p aBitrate= enter audio bitrate(45k,100K,1M,etc): 
if /i "!cCodec!"=="y" for %%A in (%*) DO ..\ffmpeg.exe -i %%A -vcodec h264 -acodec mp3 -b:v !vBitrate! -b:a !aBitrate! "new_%%~nxA"
if /i "!cCodec!"=="" for %%A in (%*) DO ..\ffmpeg.exe -i %%A -b:v !vBitrate! -b:a !aBitrate! "new_%%~nxA"
goto end

:nbit
if /i "!cCodec!"=="y" for %%A in (%*) DO ..\ffmpeg.exe -i %%A -vcodec h264 -acodec mp3 "new_%%~nxA"
if /i "!cCodec!"=="" (
	echo Select at least one.
	goto start
)
goto end

:end
pause
