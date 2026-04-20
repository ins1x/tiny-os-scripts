#!/bin/bash
# Scrape website and download result
/usr/bin/elinks "http://website.tld/file.xml" |  grep -o 'http:[^"]*' | grep mp3 | xargs wget -k -q -P /storage/
