#! /bin/sh

etherstate=$(cat /sys/class/net/lo/operstate)
wifiperc="$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) "%" }')"
wifissid="$(nmcli -t -f NAME connection show --active)"
wifistate=$(cat /sys/class/net/wlo1/operstate)

if [[ $etherstate = "up" ]]; then
    netstatus="\x0f \x0b Ether"
elif [[ $wifistate = "up" ]]; then
    netstatus="\x0f 直\x0b ${wifissid} ${wifiperc}"
else
    netstatus="\x0f 睊\x0b Down"
fi

echo -ne $netstatus
