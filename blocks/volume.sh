#!/bin/sh
ICON=""
vol="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
echo " ${ICON} ${vol}% "
