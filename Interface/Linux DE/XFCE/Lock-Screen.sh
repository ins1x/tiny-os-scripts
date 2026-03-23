#!/bin/bash
# xflock4 is the reference Bash script which is used to lock an Xfce session.
# https://wiki.archlinux.org/title/xfce
xfconf-query --create -c xfce4-session -p /general/LockCommand -t string -s "light-locker-command --lock"