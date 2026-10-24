#!/bin/sh
# Extract Any Archive (Without Thinking)
extract () { case $1 in *.tar.bz2) tar xjf $1 ;; *.tar.gz) tar xzf $1 ;; *.zip) unzip $1 ;; esac }