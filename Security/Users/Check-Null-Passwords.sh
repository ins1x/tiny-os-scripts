#!/bin/sh
# Check for Null Passwords
users="$(cut -d: -f 1 /etc/passwd)"
for x in $users do 
    passwd -S "$x" | grep "NP"
done