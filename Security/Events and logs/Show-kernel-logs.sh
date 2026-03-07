#!/bin/bash 
# kernel logs
if [ -f /var/log/kern.log ]; then 
  tail -n 50 /var/log/kern.log 
else 
  echo "Kernel log not found. Alternative: use dmesg" 
  dmesg | tail -n 50
 
fi 
echo ""