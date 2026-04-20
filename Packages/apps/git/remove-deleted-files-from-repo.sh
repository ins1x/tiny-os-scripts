#!/bin/bash
# Remove deleted files from repo
git rm $(git ls-files --deleted)