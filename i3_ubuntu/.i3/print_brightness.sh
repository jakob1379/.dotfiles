#! /bin/sh

currBrightness=$(cat /sys/class/backlight/intel_backlight/brightness)

notify-send -t 500 "Screen Brightness" "$((currBrightness*100/535)) %"
