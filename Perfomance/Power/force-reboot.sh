#!/bin/sh
# sends a reboot command directly to the kernel. 
# The effect is roughly equivalent to pressing the hardware reset button.
# It is important to understand: this is an unscheduled reboot.
echo b > /proc/sysrq-trigger