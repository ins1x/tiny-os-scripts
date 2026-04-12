#!/bin/sh
# Kill a process running on port 4500
lsof -i :4500 | awk '{l=$2} END {print l}' | xargs kill