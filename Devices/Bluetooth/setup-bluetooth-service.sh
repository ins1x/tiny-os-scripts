#!/bin/sh
# Enable kernel bluetooth module if not already enabled
if ! lsmod | grep -q btusb; then
  sudo modprobe btusb
fi
# Enable bluetooth service if not already enabled
if command -v systemctl > /dev/null; then
  sudo systemctl enable bluetooth
fi

