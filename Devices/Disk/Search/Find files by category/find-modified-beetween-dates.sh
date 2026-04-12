#!/bin/sh
# Find directories modified between two dates
find . -type d -newermt "2025-04-12" ! -newermt "2026-04-12" -exec ls -ld {} \;