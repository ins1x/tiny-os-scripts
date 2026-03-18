#!/bin/sh
# Find the application listening on a specific port (8080)
sudo netstat -tulpn | grep :8080
# alternate 
# sudo lsof -i :8080