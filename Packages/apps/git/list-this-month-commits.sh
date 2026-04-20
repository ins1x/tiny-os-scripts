#!/bin/sh
# Print the list of your Git commits this month.
git log --since='last month' --author="$(git config user.name)" --oneline