#!/bin/bash
# Print .bash_history with epoch timestamps converted to human-readable dates
awk '/^#[0-9]*$/ {split($0, arr, "#"); print "#", strftime("%c", arr[2]); getline; print }' < /path/to/.bash_history