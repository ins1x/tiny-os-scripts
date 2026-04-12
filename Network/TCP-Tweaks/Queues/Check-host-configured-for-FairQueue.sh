#!/bin/sh
# To confirm your host is configured to use fq
# Sets-queue-discipline-(qdisc)-to-FairQueue
sysctl -a | grep qdisc