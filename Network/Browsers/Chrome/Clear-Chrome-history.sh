#!/bin/bash  
  
# --- Google Chrome ---  
if [ -d "$HOME/.config/google-chrome" ]; then  
    echo "Clearing Google Chrome history..."  
    rm -f $HOME/.config/google-chrome/Default/History fi  
 
# --- Chromium ---  
if [ -d "$HOME/.config/chromium" ]; then  
    echo "Clearing Chromium history..."  
    rm -f $HOME/.config/chromium/Default/History  
fi  
 
echo "Done! Browsing history cleared."