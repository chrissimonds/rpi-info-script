#!/bin/bash
# Script: my-pi-temp.sh
# Purpose: Display the ARM CPU and GPU temperature of Raspberry Pi 2/3
# Author: Vivek Gite <www.cyberciti.biz> under GPL v2.x+
# -------------------------------------------------------
cpu=$(</sys/class/thermal/thermal_zone0/temp)
model=$(tr -d '\0' </proc/device-tree/model)
echo "$(date) @ $(hostname)"
echo "$model"
echo "-------------------------------------------"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"

