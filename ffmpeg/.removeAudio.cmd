for %%A in (%*) do ..\ffmpeg.exe -i %%A -an "new_%%~nxA"
pause
