#!/bin/bash
# display 10 frequently used unix commands 
awk '{print $1}' ~/.bash_history | sort | uniq -c | sort -rn | head -n 10