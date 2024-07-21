#!/bin/bash

# Function to display and select wallpaper using rofi
select_wallpaper() {
    # Generate the input for rofi
    rofi_input=""
    for wall in "${wallpapers[@]}"; do
        rofi_input+="$wall\x00icon\x1f$wall\n"
    done

    # Display rofi menu and get the selected wallpaper
    selected_wallpaper=$(echo -e "$rofi_input" | rofi -dmenu -i -p "Select Wallpaper" -config ~/.config/rofi/wallpaper.rasi)

    if [ -n "$selected_wallpaper" ]; then
        echo "$selected_wallpaper"
    else
        echo ""
    fi
}

# Function to set the selected wallpaper
set_wallpaper() {
    wallpaper="$1"
    if [ -f "$wallpaper" ]; then
        swww img "$wallpaper" --transition-type grow --transition-fps 30 --transition-duration 2 --transition-pos 0.810,0.972 --transition-bezier 0.65,0,0.35,1 --transition-step 255 
        wal -a 100 -i $wallpaper
        # python ~/.config/scripts/material_you/material_you.py --image $wallpaper
        python "$HOME/.config/scripts/pyhypr.py"
        pywalfox update
    else
        echo "Error: Wallpaper file $wallpaper does not exist."
    fi
}

# Main execution

wallpaper_dir="$HOME/.config/swww/Wallpapers"

# Check if the directory exists
if [ ! -d "$wallpaper_dir" ]; then
    echo "The directory $wallpaper_dir does not exist."
    exit 1
fi

# Get the list of wallpapers from the directory
wallpapers=("$wallpaper_dir"/*)

# Debugging output to check the list of wallpapers
echo "Found wallpapers: ${wallpapers[@]}"

# Select and set wallpaper
selected_wallpaper=$(select_wallpaper "${wallpapers[@]}")
if [ -n "$selected_wallpaper" ]; then
    set_wallpaper "$selected_wallpaper"
fi

