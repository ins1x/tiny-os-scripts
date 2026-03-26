#/bin/sh
# Permanent log storage (If journal logs disappear after a reboot)
mkdir -p /var/log/journal
systemctl restart systemd-journald