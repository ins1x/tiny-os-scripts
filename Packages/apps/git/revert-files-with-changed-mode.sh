#!/bin/sh
# Revert files with changed mode, not content.
git diff --numstat | awk '{if ($1 == "0" && $2 == "0") print $3}' | xargs git checkout HEAD