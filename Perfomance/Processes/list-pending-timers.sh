#!/bin/sh
# Displays a detailed list of all pending high-resolution timers in the kernel
cat /proc/timer_list | head -40