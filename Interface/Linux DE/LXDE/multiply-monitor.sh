#!/bin/sh
# Start xrandr with settings done in LXRandR
# left monitor is DVI-I-1 1920*1200 right monitor is VGA-1 1280*1024
Exec=xrandr --output DVI-I-1 --mode 1920x1200 --pos 0x0 --output VGA-1 --mode 1280x1024 --pos 1920x0