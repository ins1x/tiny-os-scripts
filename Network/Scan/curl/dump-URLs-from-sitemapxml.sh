#!/bin/sh
# Dump URLs from sitemap.xml
curl -s http://HOST/sitemap.xml | xmllint --format - | grep -e 'loc' | sed -r 's|</?loc>||g'