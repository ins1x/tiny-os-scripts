#!/bin/sh
# Show all the startup applications that are hidden in "startup applications".
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop