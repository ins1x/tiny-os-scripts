#!/bin/sh
# Check model of graphics card 
lspci | grep -i --color 'vga\|3d\|2d'