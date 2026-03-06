#!/bin/sh
# https://phoenixnap.com/kb/fix-could-not-get-lock-error-ubuntu
# [FIX] The DPKG lock error appears when trying to install a package while another process is using DPKG.
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a