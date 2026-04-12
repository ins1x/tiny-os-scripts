#!/bin/sh
# Watch cpu processes sorted by mem
watch -d -n 1 'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'