#!/bin/sh
netstat='netstat -an'
ps='ps aux'
echo MySQL connections: `$netstat|grep mysql|wc -l`
echo Apache processes:  `$ps|grep apache|grep -v grep|wc -l`
echo TCP connections:   `$netstat|grep tcp|wc -l`