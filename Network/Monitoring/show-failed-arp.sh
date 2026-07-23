#!/bin/bash
# Script to check the validity of ARP entries on the gateway
# `nud stale` refers to entries that have not been confirmed for a long time 
# but have not yet been marked as dead. 
# `nud failed` refers to entries where the ARP request received no response.
ip neigh show nud stale
ip neigh show nud failed