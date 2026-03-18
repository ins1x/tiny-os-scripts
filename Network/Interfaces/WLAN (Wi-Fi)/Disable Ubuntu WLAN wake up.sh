#!/usr/bin/sh
# Disable Ubuntu WLAN wake up
for device in XHC EHC1 EHC2; do
    grep $device /proc/acpi/wakeup | grep enabled > /dev/null && {
        sudo echo $device > /proc/acpi/wakeup
    }
done