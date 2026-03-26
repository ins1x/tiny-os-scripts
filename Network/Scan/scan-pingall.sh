#!/bin/bash
# Pinging multiple host script
seq 254 | xargs -iIP -P255 ping -c1 192.168.2.IP |grep time=