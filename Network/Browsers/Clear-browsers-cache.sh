#!/bin/bash  
 
echo "Clearing browser caches..."  
 
# Chrome/Chromium 
rm -rf ~/.cache/google-chrome/* rm -rf ~/.cache/chromium/*  
 
# Firefox 
rm -rf ~/.cache/mozilla/firefox/* for profile in ~/.mozilla/firefox/*.default*; do  
    rm -rf "$profile"/cache2/* done  
 
# Brave 
rm -rf ~/.cache/BraveSoftware/Brave-Browser/* # Opera 
rm -rf ~/.cache/opera/* rm -rf ~/.config/opera/Cache/*  
echo "All browser caches cleared!"  