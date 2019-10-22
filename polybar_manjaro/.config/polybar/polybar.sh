#!/bin/bash
killall polybar

#Find all active monitors
connectedDisplays=$(echo $connectedDisplays | awk '{print $1}')
echo Found $(echo $connectedDisplays | sed 's/ /\n/g' | wc -l) display\(s\): $connectedDisplays

#Take the first display to be the primary
mainMonitor=$(xrandr | awk '/ primary /{print $1}')
echo Using $mainMonitor as primary display
MONITOR=$mainMonitor polybar main &> /dev/null &

# secondaryDisplays=$(echo $connectedDisplays | sed 's/ /\n/g' | tail -n +2)
# if [ ! -z "$secondaryDisplays" ]; then
#     for display in $secondaryDisplays; do
#         MONITOR=$display polybar main &> /dev/null &
#         echo "Starting secondary polybar on $display"
#     done
# fi
