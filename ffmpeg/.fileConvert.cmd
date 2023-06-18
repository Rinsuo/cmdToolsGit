set /p fileType= Enter NEW file type: 
for %%a in (%*) do ..\ffmpeg.exe -i %%a "%%~na.%fileType%"
pause
