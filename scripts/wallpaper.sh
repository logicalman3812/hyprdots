#!/bin/bash

# Path to the wallpapers directory
wallpapers_dir="$HOME/.config/swww/Wallpapers"
icon_path="$HOME/.config/swww/icon.png"
conf_path="$HOME/.config/rofi/wallpaper.rasi"

# Get the list of wallpaper files
wallpapers=("$wallpapers_dir"/*)

# Create a menu for selecting wallpapers using rofi and ensure it gets focus
selected_wallpaper=$(printf '%s\n' "${wallpapers[@]##*/}" | rofi -dmenu -p -config "${conf_path}" "Select wallpaper")

# Remove the extension from the selected wallpaper name
selected_wallpaper_base="${selected_wallpaper%.*}"

# Get the path to the selected wallpaper
if [ -n "$selected_wallpaper" ]; then
    selected_wallpaper_path="$wallpapers_dir/$selected_wallpaper"
    echo "Selected wallpaper: $selected_wallpaper_path"
    notify-send -i "$icon_path" -t 1500 "Successfully set a new wallpaper" 
    wal -i $selected_wallpaper_path 
    swww img $selected_wallpaper_path --transition-type grow --transition-fps 30 --transition-duration 2 --transition-pos 0.810,0.972 --transition-bezier 0.65,0,0.35,1 --transition-step 255 
    python "$HOME/.config/scripts/pyhypr.py"
    bash "$HOME/.config/scripts/rofi_wallpaper.sh"
else
    echo "Selection canceled"
fi
