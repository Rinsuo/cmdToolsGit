@echo off
for %%a in (%*) do (
ECHO filedrive=%%~da
ECHO filepath=%%~pa
ECHO filename=%%~na
ECHO fileextension=%%~xa
ECHO filename=%%~na
ECHO fullName=%%~nxa
)
pause
