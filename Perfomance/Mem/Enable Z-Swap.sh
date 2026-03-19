#!/bin/sh
# Enable zswap. Zswap is a kernel feature that provides a compressed RAM cache for swap pages. 
# Pages which would otherwise be swapped out to disk are instead compressed and stored into a memory pool in RAM.
sudo perl -pi -e 's/^(GRUB_CMDLINE_LINUX_DEFAULT.*)"$/$1 zswap.enabled=1 zswap.compressor=lz4 zswap.zpool=z3fold zswap.max_pool_percent=25"/' /etc/default/grub
sudo update-grub
sudo echo -e 'lz4\nlz4_compress\nz3fold' >> /etc/initramfs-tools/modules
sudo update-initramfs -u
sudo reboot