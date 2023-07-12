### Rinsuo's command line tool pack v0.6
###### (Backup of my command line tool folder)
##### Basically just a bunch of premade commands for command line tools.

### tools used:
exiftool: https://github.com/exiftool/exiftool  
ffmpeg: https://github.com/FFmpeg/FFmpeg  
yt-dlp: https://github.com/yt-dlp/yt-dlp

### docs if you wanna mess around with the commands:
exiftool: https://exiftool.org/exiftool_pod.html  
ffmpeg: https://ffmpeg.org/ffmpeg.html  
yt-dlp: https://github.com/yt-dlp/yt-dlp#usage-and-options  

### if you're not me reading this, here's what some files do:
**exiftool(drop files to cmd files):**  
.exiftool(-k) - shows exif data when you drop into it  
.forcedExtensionChange - changes file extension when windows refuses (needed it when I renamed a file to .lnk)  
.wipeExif - wipes exif data

**ffmpeg(drop files to cmd files):**  
read the file names

**yt-dlp(click cmd files):**  
blob.cmd & m3u8.cmd - for downloading m3u8 videos.  
for info, check https://stackoverflow.com/questions/42901942 , headers screen displays info needed for the options  
both files are for the same purpose but blob.cmd has way more options that are rarely needed.

paste a channel or playlist url to download all. (yt, etc.)  
other files not mentioned - just read the file names  
