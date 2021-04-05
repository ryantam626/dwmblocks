#! /bin/sh
power_status="$(cat /sys/class/power_supply/ADP1/online)"
battery="$(cat /sys/class/power_supply/BAT0/capacity)"

if [ $power_status = "1" ]; then
    case ${battery%?} in
           10) i='' ;;
            9) i='' ;;
            8) i='' ;;
        [6-7]) i='' ;;
        [4-5]) i='' ;;
            3) i='' ;;
        [1-2]) i='' ;;
            *) i=''
    esac
else
    case ${battery%?} in
        9|10) i='' ;;
           8) i='' ;;
           7) i='' ;;
           6) i='' ;;
           5) i='' ;;
           4) i='' ;;
           3) i='' ;;
           2) i='' ;;
           1) i='' ;;
           *) i=''
    esac
fi

printf "\u001b[38;5;3m$i\u001b[0m $battery%%"
