#!/bin/bash
MONITOR=$(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1)

# For our workstations $MONITOR return DVI-D-0
if [ ! -n "$MONITOR" ]
then
    echo $MONITOR
    # change --brightness 1.0 to your value
    xrandr --output $MONITOR --brightness 1.0
else 
    echo "not found active monitor"
    echo 'type to find them: xrandr | grep " connected"'
fi
