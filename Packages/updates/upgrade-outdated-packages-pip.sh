#!/bin/bash
# Upgrade outdated packages when using pip
pip install --upgrade $(pip list --outdated | tail -n +3 | awk '{print $1}')