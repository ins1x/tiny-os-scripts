#!/bin/sh
# Show list of installed kernels (Debian/Ubuntu)
uname -r
dpkg --list | grep linux-image