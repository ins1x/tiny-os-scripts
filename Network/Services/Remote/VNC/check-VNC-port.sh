#!/bin/bash
# Check for listening VNC ports 
ss -ltn | grep 590
# netstat -tulpn | grep vnc