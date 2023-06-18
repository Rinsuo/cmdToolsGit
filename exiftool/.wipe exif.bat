@echo off
echo processing..
for %%a in (%*) do ..\exiftool.exe -all:all=  %%a
pause