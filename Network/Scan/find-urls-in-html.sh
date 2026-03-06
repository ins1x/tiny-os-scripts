#!/usr/bin/env bash
# Obtain website URLs from an HTML file
# Example Output
# http://www.google.com
# http://maps.google.com
# https://play.google.com

wget -qO- google.com |
sed '/\n/P;//!s|<a[^>]*\(https*://[^/"]*\)|\n\1\n|;D'
# without wget use this method
# cat urls.html | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sort -u