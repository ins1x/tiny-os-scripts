#!/bin/bash
# Get your public IP address (online from dyndns.org)
curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z<>/ :]//g'