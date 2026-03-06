#!/usr/bin/env bash
#Created by In$_!6
#Make MBR(boot - sector) copy to file
#To restore use: sudo dd if=mbr.bin of=/dev/sda bs=512 count=1 or sudo cat mbr.bin > /dev/sda

sudo dd if=/dev/sda of=mbr.bin bs=512 count=1

