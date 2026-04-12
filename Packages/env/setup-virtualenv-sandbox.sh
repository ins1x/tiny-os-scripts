#!/bin/bash
# Set up virtualenv(sandbox) for python example
sudo apt-get install virtualenv
virtualenv .venv
source .venv/bin/activate
type pip
pip install -r requirements.txt
deactivate
