@echo off
setlocal EnableDelayedExpansion
echo press ENTER to skip any option.

set "options="

set /p no_certificates=Use --no-check-certificates option? (Y/N):
if /i "!no_certificates!"=="Y" set "options=!options! --no-check-certificates"

set /p user_agent=Enter User-Agent string[ifconfig.me/ua](Enter to skip):
if not "!user_agent!"=="" set "options=!options! --add-header "User-Agent:!user_agent!""

set /p referer=Enter Referer URL (Enter to skip):
if not "!referer!"=="" set "options=!options! --add-header "Referer: !referer!""

set /p origin=Enter Origin URL (Enter to skip):
if not "!origin!"=="" set "options=!options! --add-header "Origin: !origin!""

set /p authorization=Enter Authorization token (Enter to skip):
if not "!authorization!"=="" set "options=!options! --add-header "Authorization: !authorization!""

set /p video_url=Enter download URL:

echo -
echo press any key to start download
pause

..\yt-dlp.exe !options! --concurrent-fragments 4 !video_url!
