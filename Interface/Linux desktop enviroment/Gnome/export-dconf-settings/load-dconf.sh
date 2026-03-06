#!/bin/sh
# Load backup Gnome Tweaks configuration
# Note: There may be some settings that have changed between Ubuntu versions, 
# and you will need to fix those manually. However, per vanadium's comment 
# below, most settings will transfer over just fine.

cd ~
dconf load -f / < saved_settings.dconf