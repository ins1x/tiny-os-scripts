#!/bin/sh
# Script from http://linuxoid.in/
IFACE="$1"
CTRL_SOCKET="/var/run/wpa_supplicant"
 
# We cannot perform AP scanning until interface is down. Bring up wlan interface
# with wpa_supplicant and wait a little.
wpa_supplicant -i $IFACE -C $CTRL_SOCKET &
PID=$!
sleep 5
 
SCAN_RESULT=`mktemp`
iwlist $IFACE scan > $SCAN_RESULT
 
# Simple check of scanning results. Script stops searching when first AP is
# found.
while read SSID IFACE_ALIAS ; do
	if ( grep "ESSID:\"$SSID\"" $SCAN_RESULT > /dev/null ) ; then
		echo $IFACE_ALIAS
		break
	fi
done
 
# Some cleanup before exit.
kill $PID
rm $SCAN_RESULT
 
exit 0