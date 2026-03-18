#!/bin/sh
# 7z built-in benchmark can be used to measure the CPU speed in MIPS and also to check RAM for errors.
7z b
echo "To run a single-thread benchmark - 7z b -mmt1"