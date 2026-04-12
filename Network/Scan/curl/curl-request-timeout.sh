#!/bin/sh
# Find out the time spent between request and response
curl -v -o /dev/null -s -w 'Total: %{time_total}s\n' google.com
