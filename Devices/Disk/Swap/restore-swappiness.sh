#!/bin/sh
# The default swappiness value is usually set at 60
# which is suitable for most general-use cases
sysctl -w vm.swappiness=60