#!/bin/sh
# check every process cpu usage each cpu
ps ax -L -o pid,tid,psr,pcpu,args | sort -nr -k4| head -15 | cut -c 1-90