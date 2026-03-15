#!/bin/sh
# Re-initialize a USB device without physically unplugging it
# Run it without any arguments to see usage and a list of devices.
usbreset VENDORID/DEVICEID
usbreset BUSNUM/DEVICENUM
usbreset "device name"