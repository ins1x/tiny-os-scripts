#!/bin/sh
# convert a video (any format) for Twitter
# max length 2min 20sec any video (after will be cut off)
ffmpeg -i in.mov -strict -2 -max_muxing_queue_size 9999 -vcodec libx264 -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -pix_fmt yuv420p -strict experimental -r 30 -t 2:20 -acodec aac -vb 1024k -minrate 1024k -maxrate 1024k -bufsize 1024k -ar 44100 -ac 2 out.mp4