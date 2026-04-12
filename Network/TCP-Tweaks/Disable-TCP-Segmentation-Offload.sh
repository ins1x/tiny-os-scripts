#!/bin/sh
# Fine-tune NIC settings - turn off TCP Segmentation Offload (TSO)
ethtool -K eth0 tso off