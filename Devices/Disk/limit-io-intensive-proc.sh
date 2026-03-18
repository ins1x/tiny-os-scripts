#!/bin/sh
# Limit IO usage per process (ionice)
ionice -c3 -p <PID>