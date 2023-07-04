set /p fileExt= Enter NEW file extension: 
for %%a in (%*) do ..\exiftool.exe -filename=new.%fileExt% %%a
pause
