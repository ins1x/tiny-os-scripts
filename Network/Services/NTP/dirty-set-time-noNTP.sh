#!/bin/sh
# Quick and dirty way to update system time in Linux if there is any issues with ntp
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"