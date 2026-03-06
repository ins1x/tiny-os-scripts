#!/bin/sh
# Fix Broken Packages on Fedora/CentOS and RHEL
sudo rpm -Va
sudo dnf --refresh reinstall packagename
