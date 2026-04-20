#!/bin/sh
# create video of music over a static image e.g. for uploading a song to YouTube
# where audio.mp3 is music, pic.jpg is album cover, output.mp4 is output filename
ffmpeg -loop 1 -r 1 -i pic.jpg -i audio.mp3 -c:a copy -shortest -c:v libx264 output.mp4