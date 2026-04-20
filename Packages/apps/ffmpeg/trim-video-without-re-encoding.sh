#!/bin/sh
# trim a video without re-encoding
# Note: -to specifies the length of the footage clip, not the end timecode!
ffmpeg -ss 00:01:00 -to 00:02:00  -i input.mp4 -c copy output.mp4
# -i: This specifies the input file. In that case, it is (input.mp4).
# -ss: Used with -i, this seeks in the input file (input.mp4) to position.
# 00:01:00: This is the time your trimmed video will start with.
# -to: This specifies duration from start (00:01:40) to end (00:02:12).
# 00:02:00: This is the time your trimmed video will end with.
# -c copy: This is an option to trim via stream copy. (NB: Very fast)