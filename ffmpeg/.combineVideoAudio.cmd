@echo off
SETLOCAL EnableDelayedExpansion
echo make sure you dropped both files.
set /P format=Output format: 
set /P outName=Output name: 
ffmpeg -i "%~1" -i "%~2" -c:v copy -c:a aac -shortest !outName!.!format!