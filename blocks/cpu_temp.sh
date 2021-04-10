#! /bin/sh

temp=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{printf "%.0f", $1 / 1000}')

i="T"
printf "\x0f$i\x0b $temp°"
