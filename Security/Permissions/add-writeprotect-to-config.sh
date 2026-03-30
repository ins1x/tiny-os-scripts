#!/bin/sh
# Protecting critical configurations. Prevent anyone (or any processes) from touching sshd_config
chattr +i /etc/ssh/sshd_config
# chattr -i /etc/ssh/sshd_config to unblock configfile