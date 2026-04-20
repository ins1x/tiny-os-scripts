#!/bin/bash
# Upgrade all pypi packages
pip list --outdated | cut -d' ' -f1 | xargs pip install --upgrade