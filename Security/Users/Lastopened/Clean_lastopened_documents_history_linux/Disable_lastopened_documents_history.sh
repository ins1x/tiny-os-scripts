#!/usr/bin/env bash
# Disable history last opened documents (ubuntu/mint)
echo "LOCKED from edits - use chattr -i to re allow" > ~/.local/share/recently-used.xbel && sudo chattr +i ~/.local/share/recently-used.xbel
