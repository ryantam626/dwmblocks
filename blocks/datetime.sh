#! /bin/sh
date_str="$(LC_ALL=C date "+%a %d %b")"
time_str="$(date "+%H:%M")"
echo -ne "^c#BF616A^ ^d^${date_str} ^c#A3BE8C^ ^d^${time_str}"
