#!/bin/sh
# Check boot mode BIOS or UEFI
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"