
#!/bin/bash

WAYBAR_DIR="$HOME/.config/waybar"
ROFI_CONFIG_PATH="$HOME/.config/rofi/waybar.rasi"

IGNORE_LIST=("style.css" "config.jsonc" "modules" "styles")

select_config() {
    CONFIG_DIRS=("$WAYBAR_DIR"/*)
    CONFIG_NAMES=()
    for dir in "${CONFIG_DIRS[@]}"; do
        dir_name=$(basename "$dir")
        if [[ ! " ${IGNORE_LIST[@]} " =~ " $dir_name " ]]; then
            CONFIG_NAMES+=("$dir_name")
        fi
    done

    options=$(printf '%s\n' "${CONFIG_NAMES[@]}")

    selected=$(echo -e "$options" | rofi -dmenu -p "Select waybar style" -config "$ROFI_CONFIG_PATH")

    if [[ -n "$selected" ]]; then
        selected_dir="$WAYBAR_DIR/$selected"
        
        if [[ -d "$selected_dir" ]]; then
            cp "$selected_dir/style.css" "$WAYBAR_DIR/style.css"
            cp "$selected_dir/config.jsonc" "$WAYBAR_DIR/config.jsonc"

            pkill waybar
            waybar &
        else
            echo "Selected configuration directory does not exist!"
        fi
    else
        echo "No configuration selected!"
    fi
}

select_config

