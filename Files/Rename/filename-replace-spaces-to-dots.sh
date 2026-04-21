#!/bin/bash
# Replace spaces with dots in filenames recursively
find . -depth -name "* *" -execdir rename 's/ /./g' "{}