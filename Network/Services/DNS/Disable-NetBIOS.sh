#!/bin/sh
# Disable NetBios service (nmbd) on Debian 10
sudo systemctl stop nmbd
sudo systemctl disable nmbd
sudo systemctl mask nmbd