#!/bin/bash  

# --- Opera ---  
if [ -d "$HOME/.config/opera" ]; then  
    echo "Clearing Opera history..."  
    rm -f $HOME/.config/opera/History  
fi  
 
# --- Vivaldi ---  
if [ -d "$HOME/.config/vivaldi" ]; then  
    echo "Clearing Vivaldi history..."  
    rm -f $HOME/.config/vivaldi/Default/History  
fi  
 
echo "Done! Browsing history cleared."