#! /bin/sh

currBrightness=$(xbacklight | sed "s/\..*//")

notify-send -t 300 "Screen Brightness" "$currBrightness%"
