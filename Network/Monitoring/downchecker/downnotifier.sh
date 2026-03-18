#!/bin/bash
# Notify when server is down script

for i in $@
do
ping -c 1 $i &> /dev/null

if [ $? -ne 0 ]; then
	echo "`date`: ping failed, $i host is down!" | mail -s "$i host is down!" my@email.address 
fi
done