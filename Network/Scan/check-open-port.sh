#!/bin/bash
# Test a single TCP port with Bash ('</dev/tcp/HOST/PORT')
timeout 5 bash -c '</dev/tcp/kernel.org/443 &>/dev/null'