#!/bin/sh
# Lists running systemd units in descending order of time taken to initialize during boot-up
systemd-analyze blame