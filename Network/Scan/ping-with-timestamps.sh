#!/bin/sh
# Add timestamp to the output of ping
ping some_host | while read LINE; do echo $(date): $LINE; done