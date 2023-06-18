FOR %%A IN (%*) DO ..\ffmpeg.exe -i %%A -b:v 15k -c:a libopus -b:a 10k "new_%%~nxA"
PAUSE
