@echo off
SETLOCAL EnableDelayedExpansion

set /p referlink= "enter referer url: "
set /p vlink= "download url(link): "

..\yt-dlp.exe !vlink! --referer !referlink! --concurrent-fragments 4

:scriptend
pause