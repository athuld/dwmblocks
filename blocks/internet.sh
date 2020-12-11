#!/bin/sh
wifi=$(cat /sys/class/net/w*/operstate 2>/dev/null)
eth=$(cat /sys/class/net/e*/operstate 2>/dev/null)

if [ $eth == 'up' ]; then
	ICON=""
elif [ $wifi == 'up' ]; then
	ICON=""
else
	ICON=""
fi

echo "${ICON}"

