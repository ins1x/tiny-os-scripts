#!/bin/sh
# Export your keyboard shortcut keys
dconf dump /org/cinnamon/desktop/keybindings/ > keybindings-backup.dconf
echo "Type on another machine to load keybinds config:"
echo "dconf load /org/cinnamon/desktop/keybindings/ < keybindings-backup.dconf" 