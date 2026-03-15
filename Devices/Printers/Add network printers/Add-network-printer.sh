#!/bin/sh
# Add the network printer
# ipp://192.168.1.100/ipp/print that Device URI (from lpinfo -v)
# Alternative protocols Socket (HP/JetDirect): socket://192.168.1.100:9100 and LPD: lpd://192.168.1.100/queue
sudo lpadmin -p "Home-Printer-NX" -E -v ipp://192.168.1.100/ipp/print -m everywhere
