#!/bin/bash

# Take a screenshot and send a notification

SCREENSHOT_DIR="/home/$USER/screenshot"
FILENAME="$(date +%a-%b-%d-%y-%H:%M:%S).png"

if [ ! -d "$SCREENSHOT_DIR" ]; then
  mkdir -p "$SCREENSHOT_DIR"
fi

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  DISPLAY_SERVER="wayland"
else
  echo "Could not detect display server"
  exit 1
fi

take_screenshot() {
  local mode=$1
  local filepath="$SCREENSHOT_DIR/$FILENAME"

  case $DISPLAY_SERVER in
    "wayland")
      case $mode in
        fullscreen)
          hyprshot -m output --output-folder "$SCREENSHOT_DIR" -f "$FILENAME" | wl-copy
          # wl-copy <"$filepath"
          ;;
        select)
          hyprshot -m region --output-folder "$SCREENSHOT_DIR" -f "$FILENAME" | wl-copy
          # wl-copy <"$filepath"
          ;;
        window)
          hyprshot -m window --output-folder "$SCREENSHOT_DIR" -f "$FILENAME" | wl-copy
          # wl-copy <"$filepath"
          ;;
      esac
      ;;
 esac
}

take_screenshot "$1"
