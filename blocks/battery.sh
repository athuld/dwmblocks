#!/bin/sh

read -r status </sys/class/power_supply/BAT0/status
read -r capacity </sys/class/power_supply/BAT0/capacity

case $status in
        "Charging")
                ICON=""
                ;;
        *)

if [ $capacity -le 100 ] && [ $capacity -ge 75 ]; then
        ICON=""
elif [ $capacity -le 74 ] && [ $capacity -ge 50 ]; then
        ICON=""
elif [ $capacity -le 49 ] && [ $capacity -ge 25 ]; then
        ICON=""
else
        ICON=""
fi

esac

echo "${ICON} $capacity%"

