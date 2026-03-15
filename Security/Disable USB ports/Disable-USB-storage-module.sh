
#!/bin/sh
# Save and close the file. Now the driver will not load. You can also remove USB Storage driver without rebooting the system/
modprobe -r usb-storage
mv -v /lib/modules/$(uname -r)/kernel/drivers/usb/storage/usb-storage.ko /root/
lsmod | grep -i usb-storage