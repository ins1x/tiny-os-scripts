#!/bin/sh
# Fix Broken Packages om Debian and Ubuntu
sudo dpkg --remove --force-remove-reinstreq
sudo apt --fix-missing update
sudo apt clean
sudo apt update
