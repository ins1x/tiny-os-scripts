#!/bin/sh
# OpenGL Renderer Info (Active GPU)
glxinfo | grep -E "OpenGL vendor|OpenGL renderer"