#!/bin/bash
# display wireless network ip
sudo ifconfig wlan0 | grep inet | awk 'NR==1 {print $2}' | cut -c 6-