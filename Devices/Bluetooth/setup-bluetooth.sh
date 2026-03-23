#!/usr/bin/env bash
# Install bluetooth packages
if command -v apt-get > /dev/null; then
  sudo apt install -y blueman bluez
elif command -v pacman > /dev/null; then
  sudo pacman -S --noconfirm blueman bluez bluez-hid2hci
elif command -v dnf > /dev/null; then
  sudo dnf install -y blueman bluez bluez-hid2hci
fi