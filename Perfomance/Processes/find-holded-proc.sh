#!/bin/bash
# find which processes hold files/sockets
# including "remote" binaries and running but deleted files
sudo lsof -i
sudo lsof +L1 | head