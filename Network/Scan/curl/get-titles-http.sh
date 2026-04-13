#!/bin/sh
# Get Titles from URL
for i in $(cat urls.txt ); do echo "$i | $(curl --connect-timeout 0.5 $i -so - | grep -iPo '(?<=<title>)(.*)(?=</title>)')"; done | tee -a titles.txt