#! /bin/sh

speeds=$(netspeed)
i="N"
printf "\x0f$i\x0b $speed"
