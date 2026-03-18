#!/bin/sh
# List all network devices connected to the PCI bus
sudo lspci | grep -Ei 'eth|network|ethernet|wireless|wifi'