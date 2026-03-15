#!/bin/sh
# Find display dimensions (for X server)
xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'
# Get the horizontal and vertical resolutions using the following command
xdpyinfo | grep dimensions | awk '{print $2}' | awk -Fx '{print $1, $2}'
# Alternative method
# xrandr | fgrep '*'