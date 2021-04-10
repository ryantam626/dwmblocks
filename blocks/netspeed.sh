#! /bin/sh

speeds=$(netspeed)
i="N"
printf "\x0e$speeds\x0b"
