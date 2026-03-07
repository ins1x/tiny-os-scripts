#!/bin/bash 
# Checks current and rotated authentication logs for security auditing
 
if [ -f /var/log/auth.log ]; then 
  echo "[Current auth.log]" && tail -n 50 /var/log/auth.log 
  [ -f /var/log/auth.log.1 ] && echo -e "\n[Recent Archive - auth.log.1]" && tail -n 20 /var/log/auth.log.1
elif [ -f /var/log/secure ]; then 
  echo "[Current secure]" && tail -n 50 /var/log/secure 
  [ -f /var/log/secure.1 ] && echo -e "\n[Recent Archive - secure.1]" && tail -n 20 /var/log/secure.1
else 
  echo "Authentication log not found."
 
fi 
echo ""