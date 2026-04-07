#!/bin/sh
# Ping can be used to verify the MTU size. 
ping -4 -s 1500 -M do -c 4 github.com