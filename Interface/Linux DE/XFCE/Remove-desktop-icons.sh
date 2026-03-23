#!/bin/sh
# Kill window shortcut
# Xfce does not have a shortcut to kill a window, for example when a program freezes.
# With xorg-xkill, use xkill to interactively kill a window. For the currently active window, use xdotool:
# xdotool getwindowfocus windowkill
# https://wiki.archlinux.org/title/xfce
sh -c "xkill -id $(xprop -root -notype | sed -n '/^_NET_ACTIVE_WINDOW/ s/^.*# *\|\,.*$//g p')"