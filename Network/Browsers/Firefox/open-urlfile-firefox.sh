#!/bin/sh
# Open Windows internet shortcut (*.url) files in firefox
grep -i url='*' file.url | cut -b 5- | xargs firefox