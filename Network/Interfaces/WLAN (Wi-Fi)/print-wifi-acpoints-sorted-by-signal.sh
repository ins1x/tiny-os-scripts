#/bin/sh
# Print wifi access points sorted by signal
iw dev IFACE scan | egrep "SSID|signal" | awk -F ":" '{print $2}' | sed 'N;s/\n/:/' | sort