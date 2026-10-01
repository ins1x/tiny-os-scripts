#!/bin/sh
# check the systemd task queue
watch -n 1 'systemctl --failed'