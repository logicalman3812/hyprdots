
#!/bin/bash

WAYBAR_DIR="$HOME/.config/waybar"

# Получаем список папок в директории WAYBAR_DIR
CONFIG_DIRS=("$WAYBAR_DIR"/*)
# Исключаем файлы и папки, указанные в игнор-листе
IGNORE_LIST=("style.css" "config.jsonc" "modules")
for ignored_item in "${IGNORE_LIST[@]}"; do
    CONFIG_DIRS=("${CONFIG_DIRS[@]//$ignored_item}")
done

# Проверяем, есть ли доступные конфигурации
if [[ ${#CONFIG_DIRS[@]} -eq 0 ]]; then
    echo "No configuration directories found!"
    exit 1
fi

# Получаем текущее время в секундах
CURRENT_TIME=$(date +%s)

# Вычисляем индекс папки на основе текущего времени
INDEX=$(( CURRENT_TIME % ${#CONFIG_DIRS[@]} ))

# Получаем имя выбранной папки
SELECTED_DIR="${CONFIG_DIRS[$INDEX]}"

# Копируем конфигурацию Waybar из выбранной папки
if [[ -d "$SELECTED_DIR" ]]; then
    cp "$SELECTED_DIR/style.css" "$WAYBAR_DIR/style.css"
    cp "$SELECTED_DIR/config.jsonc" "$WAYBAR_DIR/config.jsonc"

    # Перезапускаем Waybar
    pkill waybar
    waybar &
else
    echo "Selected configuration directory does not exist!"
fi

