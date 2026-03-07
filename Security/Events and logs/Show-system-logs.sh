#!/bin/bash 
# Checks current and the most recent rotated system log
 
if [ -f /var/log/syslog ]; then 
  echo "[Current syslog]" && tail -n 50 /var/log/syslog 
  [ -f /var/log/syslog.1 ] && echo -e "\n[Recent Archive - syslog.1]" && tail -n 20 /var/log/syslog.1
elif [ -f /var/log/messages ]; then 
  echo "[Current messages]" && tail -n 50 /var/log/messages 
  [ -f /var/log/messages.1 ] && echo -e "\n[Recent Archive - messages.1]" && tail -n 20 /var/log/messages.1
else 
  echo "System log not found."
 
fi 
echo ""