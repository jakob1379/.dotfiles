#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top &

# Check if xdo is installed
xdo_path=$(which xdo)
if [ $? -ne 0 ]; then
    echo "Cannot find \`xdo\` command." 1>&2
    exit 1
fi
# Obtain bar's window id
id=$(xdo id -N "Polybar")
# Toggle bar visibility
if xprop -id $id | grep -q "Normal"; then
    xdo hide -N "Polybar"
else
    xdo show -N "Polybar"
fi