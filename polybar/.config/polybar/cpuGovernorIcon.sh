#!/bin/sh

profile=$(cat "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor")

if [ $profile = "powersave" ]
then
   echo ""
fi
if [ $profile = "performance" ]
then
   echo ""
fi

