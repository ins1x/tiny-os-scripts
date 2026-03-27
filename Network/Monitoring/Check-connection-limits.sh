#!/bin/sh
# Check service has reached its connection limits (port 8000)
netstat -plant | grep :8000