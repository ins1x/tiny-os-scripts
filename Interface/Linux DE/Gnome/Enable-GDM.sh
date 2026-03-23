#!/bin/sh
# Enable GDM - GNOME Display Manager
if command -v systemctl > /dev/null; then
  if systemctl list-unit-files | grep -q gdm.service; then
    sudo systemctl enable gdm
  elif systemctl list-unit-files | grep -q gdm3.service; then
    sudo systemctl enable gdm3
  fi
fi