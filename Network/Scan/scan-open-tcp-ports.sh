#!/bin/sh
# Scan all open local ports without any external programs
for i in {1..65535}; do (< "/dev/tcp/127.0.0.1/$i") &>/dev/null && { echo; echo "[+] Open Port at: $i"; }  || printf "."; done; echo