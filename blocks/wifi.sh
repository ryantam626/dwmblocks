#! /bin/sh

wifissid="$(nmcli -t -f NAME connection show --active)"
wifiperc="$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) "%" }')"
echo -ne "^c#B48EAD^ ^d^${wifiperc} ${wifissid}"
