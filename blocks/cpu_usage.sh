#! /bin/sh

idle_cpu=$(mpstat 1 1 | tail -n1 | awk '{print $NF}')
used_cpu=$(echo $idle_cpu | awk '{printf "%.2f", 100 - $1}')
i="C"
printf "\x0f$i\x0b $used_cpu%%"
