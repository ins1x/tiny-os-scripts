#!/usr/bin/sh
# Setup UFW (Uncomplicated Firewall
sudo apt-get -y install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw --force enable