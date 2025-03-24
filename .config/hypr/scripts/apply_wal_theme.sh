#!/bin/bash

THEME_FILE="/tmp/theme_variant"
wal_arguments=""

if [ -s "$THEME_FILE" ]; then
  case $(<"$THEME_FILE") in
    "light") wal_arguments="lighten -l" ;;
  esac
fi

wal -i ~/wallpaper/wallpaper.png --cols16 $wal_arguments -q -n -e

if pgrep -x "waybar" >/dev/null; then
    killall waybar
fi

waybar &

swaync-client -rs
pywalfox update
