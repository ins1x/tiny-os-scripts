#!/bin/sh
#Lists Bluetooth controllers
echo "Lists Bluetooth USB controllers, including internal ones"
lsusb | grep -i bluetooth
echo "Check Kernel Support/Hardware drivers loaded"
sudo dmesg | grep -i blue
echo "Lists Bluetooth loadable kernel modules"
sudo lsmod | grep bluetooth 
echo "List Bluetooth Adapters (Name & MAC Address)"
bluetoothctl list