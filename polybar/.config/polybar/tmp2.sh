#!/bin/env shx

profile=$(cat "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor")

if [ $profile = "powersave" ]
   notify-send ""
fi


