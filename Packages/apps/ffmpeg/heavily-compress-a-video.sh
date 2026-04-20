#/bin/sh
# heavily compress a video. (for spotty networks)
# set -threads to number of physical CPU cores on computer
# compress a 16:9 video to very low resolution (768x432)
ffmpeg -i input.mp4 -strict -2 -max_muxing_queue_size 9999 -threads 4 -vf scale=768x432:flags=lanczos -c:v libx264 -preset slow -crf 21 output_compress_480p.mp4