#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'


# Check if xdo is installed
xdo_path=$(which xdo)
if [ $? -ne 0 ]; then
    echo "Cannot find \`xdo\` command." 1>&2
    exit 1
fi
# Obtain bar's window id
ids=$(xdo id -N "Polybar")
# Toggle bar visibility

for id in $ids
do
    if xprop -id $id | grep -q "Normal"; then
	echo "hiding: $id"
	xdo hide -N "Polybar"
	exit 0
    else
	echo "unhiding: $id"
	xdo show -N "Polybar"
	exit 0
    fi
done
