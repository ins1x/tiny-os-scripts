#!/usr/bin/env python
import webbrowser
# Simple script to restore working tabs in default browser
urls = [
    'https://github.com/ins1x/tiny-os-scripts',
    'freebsd.org'
]
for url in urls:
    webbrowser.open_new_tab(url)

