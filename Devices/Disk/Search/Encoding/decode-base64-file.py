#!/usr/bin/env python3
# Oneliner. Decode a base64 encoded file
import base64, sys; base64.decode(open(sys.argv[1], "rb"), open(sys.argv[2], "wb"))