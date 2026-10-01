#!/bin/sh
# Find processes in an uninterruptible I/O wait state (D state).
ps -eo pid,stat,wchan:32,cmd | grep ' D '