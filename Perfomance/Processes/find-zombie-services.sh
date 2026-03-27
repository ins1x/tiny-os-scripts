#!/bin/bash
# Find zombie and D-state processes
ps -eo stat,pid,comm | grep '^Z'
ps -eo stat,pid,comm | grep '^D'