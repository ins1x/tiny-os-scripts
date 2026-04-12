#!/bin/sh
# Get the HTTP status code of a URL
curl -Lw '%{http_code}' -s -o /dev/null -I SOME_URL