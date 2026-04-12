#!/bin/sh
# Check disk usage and send mail

df -H | awk '{ print $5 " " $6 }' | while read output;
do
  echo $output
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge 90 ]; then
    echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
     mail -s "Warning! There is no space on the disk: $usep%" root@domain.com
  fi
done