#!/bin/sh
# Current bootlog. Useful after a server crash or reboot.
# Use journalctl -b -1 to show previos bootlog
journalctl -b