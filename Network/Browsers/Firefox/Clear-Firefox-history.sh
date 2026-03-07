#!/bin/bash  

# --- Firefox ---  
if [ -d "$HOME/.mozilla/firefox" ]; then  
    echo "Clearing Firefox history..."  
    for profile in $HOME/.mozilla/firefox/*.default*; do  
        if [ -f "$profile/places.sqlite" ]; then  
            rm -f "$profile/places.sqlite"  
            echo "Deleted Firefox history database in $profile"  
        fi  
    done  
fi  

echo "Done! Browsing history cleared."