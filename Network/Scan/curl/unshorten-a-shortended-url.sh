#!/bin/sh
# Unshorten a shortended URL
curl -s -o /dev/null -w "%{redirect_url}" https://bit.ly/1234567j
