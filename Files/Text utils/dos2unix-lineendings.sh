#!/bin/bash
# Convert text files from Windows/DOS format to Unix format. 
# It solves the problem of hidden carriage return characters (CRLF).
find -type f -print0 | xargs -0 dos2unix