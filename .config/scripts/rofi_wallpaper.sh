#!/bin/bash

colors_file="$HOME/.cache/wal/wal"
output_file="$HOME/.config/rofi/.current_wallpaper"

if [[ -f "$colors_file" ]]; then
    wallpaper_path=$(head -n 1 "$colors_file")
    
    mkdir -p "$(dirname "$output_file")"
    
    echo "$wallpaper_path" > "$output_file"
else
    echo "Файл $colors_file не найден."
fi
