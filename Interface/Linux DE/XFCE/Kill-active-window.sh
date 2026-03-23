#!/bin/sh
# Remove desktop icons
# To reinstate icons on the desktop, issue the same command with a value of 2.
# https://wiki.archlinux.org/title/xfce
xfconf-query -c xfce4-desktop -v --create -p /desktop-icons/style -t int -s 0