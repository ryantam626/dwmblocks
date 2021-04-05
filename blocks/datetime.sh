#! /bin/sh
date_str="$(LC_ALL=C date "+%a %d %b")"
time_str="$(date "+%H:%M")"
echo -ne " \x0f\x0b ${date_str} \x0f\x0b ${time_str}"
