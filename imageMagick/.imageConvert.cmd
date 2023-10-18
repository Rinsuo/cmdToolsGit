set /p fileType= Enter NEW file type: 
for %%a in (%*) do ImageMagickPortable\magick.exe -verbose %%a "%%~na.%fileType%"
pause
