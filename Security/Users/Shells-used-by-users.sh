#!/bin/sh
# List shells used by users 
awk -F: '{print $1, $7}' /etc/passwd