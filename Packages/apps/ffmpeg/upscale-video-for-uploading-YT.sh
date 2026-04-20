#!/bin/sh
# upscale a video for uploading low resolution video to youtube while perserving bitrate (quality)
ffmpeg -i input.mp4 -strict -2 -max_muxing_queue_size 9999 -threads 4 -vf scale=1920x1080:flags=lanczos -c:v libx264 -preset slow -crf 21 output_compress_1080p.mp4