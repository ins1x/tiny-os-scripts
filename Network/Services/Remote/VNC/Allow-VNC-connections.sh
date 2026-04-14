#!/bin/bash
# VNC uses port 5900 by default, and the local firewall usually blocks that. 
# You can open that port using firewall-cmd:
sudo firewall-cmd --add-service vnc-server