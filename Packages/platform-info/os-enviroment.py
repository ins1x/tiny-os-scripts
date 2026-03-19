#!/usr/bin/env python3
# Simple script get linux enviroment

import os
for item in os.environ:
    print(f'{item}{" : "}{os.environ[item]}')
