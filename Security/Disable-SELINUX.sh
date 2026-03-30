#!/bin/sh
# SELinux has three operating modes, with Enforcing mode set by default.
# Enforcing — all actions that violate the current security policy will be blocked, and the attempted violation will be logged.
# Permissive — information about all actions that violate the current security policy will be logged, but the actions themselves will not be blocked.
# Disabled — completely disables the mandatory access control system.
# The changes will only be applied after rebooting the OS.
sudo sed -i "s/SELINUX=enforcing/SELINUX=Disabled/" /etc/selinux/config