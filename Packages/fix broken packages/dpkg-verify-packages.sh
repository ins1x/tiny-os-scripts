#!/bin/sh
# Checking package integrity (compare with reference hashes from the packages)
dpkg --verify
# also rpm -Va