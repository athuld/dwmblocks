#!/bin/bash

ICON=""
mem="$(free -h | awk '/^Mem:/ {print $3}')"
echo -e "${ICON} $mem"

