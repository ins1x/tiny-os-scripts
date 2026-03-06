#!/usr/bin/env bash
# Clean last opened documents after reboot
if [ `rm /home/user/.local/share/zeitgeist/activity.sqlite` ]; then
rm /home/user/.local/share/recently-used.xbel
else
rm /home/user/.local/share/recently-used.xbel
fi
