#! /bin/sh

used_mem=$(free | awk 'NR==2,NR==2{printf "%.1f", (($2 - $7) / $2 * 100)}')
i="M"
printf "\x0f$i\x0b $used_mem%%"
