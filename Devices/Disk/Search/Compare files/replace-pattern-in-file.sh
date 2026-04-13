#!/bin/bash
# Replace a pattern in a file in a portable way
f=/path/to/file; sed -e "s/pattern/replacement/" "$f" > "$f".bak && mv "$f".bak "$f"