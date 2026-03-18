#!/bin/sh
# Script checks internet connection without ping flood
if nc -zw1 google.com 443; then
  echo "we have connectivity"
fi