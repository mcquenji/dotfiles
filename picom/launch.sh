#!/usr/bin/env bash

killall -q picom

# Wait untill picom is killed
while pgrep -u $UID -x picom > /dev/null; do sleep 1; done

picom
