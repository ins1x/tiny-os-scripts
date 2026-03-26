#!/bin/sh
# Quickly kill the process that is listening on the port 8080
lsof -i:8080 -t | xargs kill