#!/bin/bash

image_dir="$HOME/wallpaper/"
images=("$image_dir"/*)

image_list=""
for img in "${images[@]}"; do
    image_list+=$(basename "$img" | cut -d. -f1)"\x00icon\x1f${img}\n"
done

selected_image=$(printf '%b' "$image_list" | rofi -dmenu -theme ~/.config/rofi/wallpaper-select.rasi -p "Select wallpaper")

for img in "${images[@]}"; do
    if [[ "$(basename "$img" | cut -d. -f1)" = "$selected_image" ]]; then
        selected_image_path="$img"
        break
    fi
done

if [ -n "$selected_image_path" ]; then
  ln -sf "$selected_image_path" ~/wallpaper/wallpaper.png

  if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    . ~/.config/hypr/scripts/set_wallpaper.sh
  else
    i3-msg restart
  fi

  notify-send -a "Wallpaper selector" "Wallpaper changed" "$selected_image_path" -i ~/wallpaper/wallpaper.png
  . ~/.config/hypr/scripts/apply_wal_theme.sh
fi

