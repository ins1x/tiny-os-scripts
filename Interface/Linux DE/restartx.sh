#!/bin/sh
# TO RESTART X ctl-alt-backspace (disabled since Ubuntu 10.04)
sudo pkill X
/etc/init.dgdm restart | /etc/init.d/xdm restart | /etc/init.d/kdm restart