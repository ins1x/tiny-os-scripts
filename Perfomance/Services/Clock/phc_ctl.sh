#!/bin/bash
# phc_ctl examining network interface card clocks
# On servers using PTP, some network adapters have their own hardware clocks, known as PHCs.
sudo phc_ctl /dev/ptp0 get
