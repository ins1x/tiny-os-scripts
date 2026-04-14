#!/bin/bash
# Show all orphaned processes (could be daemons)
ps -elf | awk '{if ($5 == 1){print $4" "$5" "$15}}'