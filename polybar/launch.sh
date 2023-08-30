#!/usr/bin/env bash

# Terminate already running bar instances

killall -q polybar

# Wait until the processes have been shut down

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Load wallpaper
wal -i ~/.config/wallpapers

# Load theme from wallpaper
~/.config/polybar/wal-polybar.py

polybar
