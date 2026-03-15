#!/bin/bash
# Check for Wayland or Xorg (X11) Linux desktop
echo "$XDG_SESSION_TYPE"
env | grep -E -i 'x11|xorg|wayland'