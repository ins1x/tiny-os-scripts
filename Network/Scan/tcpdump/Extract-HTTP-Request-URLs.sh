#!/bin/sh
# Parse Host and HTTP Request location from traffic
sudo tcpdump -s 0 -v -n -l | egrep -i "POST /|GET /|Host:"