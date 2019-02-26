#!/bin/env sh

profile=$(cat "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor")

if [ $profile = "performance" ]
   notify-send ""
fi



