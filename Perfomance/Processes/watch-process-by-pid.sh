#!/bin/bash
# watch a specific process by PID
watch -n 1 'ps -p 1234 -o pid,%cpu,%mem,etime,cmd'