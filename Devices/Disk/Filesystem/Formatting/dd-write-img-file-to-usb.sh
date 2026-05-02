#!/bin/bash
# Write image file to usb device
dd if=file.img of=/dev/sdx bs=4M oflag=sync