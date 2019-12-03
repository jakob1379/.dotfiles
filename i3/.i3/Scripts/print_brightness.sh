#! /bin/sh

currBrightness=$(cat /sys/class/backlight/intel_backlight/brightness)

notify-send -t 250 "Screen Brightness" "$((currBrightness*100/535))%"
