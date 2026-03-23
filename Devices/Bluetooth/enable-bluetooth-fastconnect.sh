#!/bin/sh
# Make connecting to bluetooth sound devices better
sudo sed -i "/FastConnectable/ c\FastConnectable = true" /etc/bluetooth/main.conf



