#!/bin/sh
# Top 20 max-depth directories
du -hcx --max-depth=6 / | sort -rh | head -n 20