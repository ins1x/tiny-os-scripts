#!/bin/bash
# Fix issue when using a separate window manager with gnome-settings-daemon, the mouse cursor may vanish
sudo gsettings set org.gnome.settings-daemon.plugins.cursor active false