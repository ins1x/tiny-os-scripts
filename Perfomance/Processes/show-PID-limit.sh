#!/bin/sh
# Checking limits and current status (PID limit)
cat /proc/sys/kernel/pid_max
ps -e | wc -l