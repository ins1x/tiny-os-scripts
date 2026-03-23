#!/bin/sh
# Dump all Gnome Tweaks configuration
# Note: There may be some settings that have changed between Ubuntu versions, 
# and you will need to fix those manually. However, per vanadium's comment 
# below, most settings will transfer over just fine.

cd ~
dconf dump / > saved_settings.dconf