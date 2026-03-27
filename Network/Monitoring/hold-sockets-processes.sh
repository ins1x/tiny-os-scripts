#!/bin/sh
# Find processes that hold sockets
lsof -nP | grep CLOSE_WAIT