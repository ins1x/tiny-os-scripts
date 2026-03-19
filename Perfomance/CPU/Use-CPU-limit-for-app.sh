#!/bin/bash
# Use cpulimit to Limit CPU Usage of Processes
apt-get install cpulimit
cpulimit -e $myapp -l 50