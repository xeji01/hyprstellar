#!/bin/env bash

# Path to the icons for notifications
ICON_PATH="$HOME/.config/hypr/scripts/icons"

# Directory where screen recordings will be saved
DIRECTORY="$HOME/screenrecord"

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    mkdir -p "$DIRECTORY"
fi

# Check if wf-recorder is running
if pgrep -x "wf-recorder" > /dev/null; then
    pkill -INT -x wf-recorder
    notify-send -i "$ICON_PATH/recording-stop.png" -h string:wf-recorder:record -t 2500 "Finished Recording" "Saved at $DIRECTORY"
    # Update Waybar status
    swaymsg "exec ~/.config/hypr/scripts/recording_status.sh"
    exit 0
fi

# Get the list of available monitor names using grep and awk
MONITORS=$(hyprctl monitors | grep "^Monitor " | awk '{print $2}')

# Debug: Print the value of MONITORS
echo "DEBUG: Monitors list:"
echo "$MONITORS"

# Present the monitor list in rofi
SELECTED_MONITOR=$(echo "$MONITORS" | rofi -dmenu -p "Record Monitor:")

# Debug: Print the selected monitor
echo "DEBUG: Selected monitor: $SELECTED_MONITOR"

# Check if a monitor was selected
if [ -n "$SELECTED_MONITOR" ]; then
    # Use the selected monitor name directly
    MONITOR_NAME="$SELECTED_MONITOR"

    # Get the current date and time for the filename
    dateTime=$(date +%a-%b-%d-%y-%H:%M:%S)

    # Notify the user that recording will start on the selected monitor
    notify-send -i "$ICON_PATH/recording.png" -h string:wf-recorder:record -t 1500 "Recording Monitor" "Starting recording on: $MONITOR_NAME"

    # Start the screen recording on the selected output
    wf-recorder -o "$MONITOR_NAME" --bframes max_b_frames -f "$DIRECTORY/$dateTime.mp4" &

elif [ -z "$SELECTED_MONITOR" ]; then
    # User cancelled the rofi menu
    exit 0
else
    notify-send -i "$ICON_PATH/recording.png" "Error" "No monitor selected."
    exit 1
fi
