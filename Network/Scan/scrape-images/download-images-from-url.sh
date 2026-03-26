#!/bin/bash
# Script to extract a list of all the images on a web page (web scraping code)
# Requires: lynx, wget
for i in `lynx -image_links -dump http://www.google.com | grep 'jpg\|gif' \
| grep http | awk '{print $2}'`; do wget $i; done
