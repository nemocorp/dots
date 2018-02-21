#!/bin/bash
###################################################################
# Script Name    : launch.sh
# Description    : Launch polybar in i3
# Args           :
# Author         : Wouham
# Email          : wouham@protonmail.com
###################################################################

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar example &

echo "Bars launched..."
