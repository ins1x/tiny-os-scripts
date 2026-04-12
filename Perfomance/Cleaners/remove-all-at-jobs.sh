#!/bin/sh
# Remove all at jobs
atq | sed 's_\([0-9]\{1,8\}\).*_\1_g' | xargs atrm