#!/bin/sh
# Enabling official source code repositories
sudo sed -i 's/^#\s*deb-src/deb-src/' /etc/apt/sources.list /etc/apt/sources.list.d/*.list
sudo apt update