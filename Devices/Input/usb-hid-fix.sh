#!/bin/sh
# Re-add usbhid, fixes problems related to the mouse or other USB peripherals
sudo modprobe -r usbhid && sleep 1 && sudo modprobe usbhid