#!/bin/bash
# Pull every repo in folder
ls | xargs -P10 -I{} git -C {} pull