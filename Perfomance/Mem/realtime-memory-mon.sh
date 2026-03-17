#!/bin/sh
# Monitor memory without top or htop
watch -n 5 -d '/bin/free -m'