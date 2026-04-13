#!/bin/sh
# Curl command to run commands through a SOCKS proxy 
# (setup either through TOR or ssh tunneling)
curl --socks5 localhost:9050 https://check.torproject.org > index.html
$EDITOR index.html