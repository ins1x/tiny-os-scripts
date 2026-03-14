#!/bin/bash
#Clean RDP gistory for Remote Desktop Viewer (Vinagre)
HISTORY_FILE=~/.local/share/vinagre/history

if [ -f "$HISTORY_FILE" ]; then
    echo "Clearing Vinagre RDP history..."
    cat /dev/null > "$HISTORY_FILE"
    echo "History cleared."
else
    echo "Vinagre history file not found at $HISTORY_FILE"
fi