#!/bin/sh
# Parsing the email recipients
:~$ sudo tcpdump -nn -l port 25 | grep -i 'MAIL FROM\|RCPT TO'