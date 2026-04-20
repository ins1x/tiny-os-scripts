#!/bin/bash
# Download recursively from an URL all files of a given type to current directory
wget -r -np -nd -nc -A "*.zip" 'http://www.example.com/'