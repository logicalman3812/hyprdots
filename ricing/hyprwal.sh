#!/bin/bash

# Путь к файлу цветов, созданному pywal
COLORS_FILE="$HOME/.cache/wal/colors"

# Проверка существования файла с цветами
if [[ ! -f "$COLORS_FILE" ]]; then
    echo "Файл с цветами не найден: $COLORS_FILE"
    exit 1
fi

# Функция для преобразования HEX в RGBA
hex_to_rgba() {
    hex=${1#"#"}
    r=${hex:0:2}
    g=${hex:2:2}
    b=${hex:4:2}
    a="ff"  # Устанавливаем прозрачность на 100%
    echo "rgba(${r}${g}${b}${a})"
}

# Чтение цветов из файла
readarray -t COLORS < "$COLORS_FILE"

# Проверка, что файл содержит достаточное количество строк
if [[ ${#COLORS[@]} -lt 8 ]]; then
    echo "Недостаточно цветов в файле: $COLORS_FILE"
    exit 1
fi

# Извлечение нужных цветов и преобразование их в RGBA для Hyprland и Hyprlock
ACTIVE_BORDER=$(hex_to_rgba "${COLORS[1]}")
INACTIVE_BORDER=$(hex_to_rgba "${COLORS[0]}")
BACKGROUND_COLOR=$(hex_to_rgba "${COLORS[0]}")
FOREGROUND_COLOR=$(hex_to_rgba "${COLORS[7]}")

echo "Active border color: $ACTIVE_BORDER"
echo "Inactive border color: $INACTIVE_BORDER"
echo "Background color: $BACKGROUND_COLOR"
echo "Foreground color: $FOREGROUND_COLOR"

# Путь к вашему конфигурационному файлу Hyprland
HYPRLAND_CONFIG="$HOME/.config/hypr/hyprland.conf"

# Создаем временный файл для новой конфигурации
TEMP_CONFIG=$(mktemp)

# Обновляем цвета в конфигурации Hyprland с добавлением отступа
awk -v active_border="$ACTIVE_BORDER" -v inactive_border="$INACTIVE_BORDER" '
{
    if ($1 == "col.active_border") {
        print "    col.active_border = " active_border;
    } else if ($1 == "col.inactive_border") {
        print "    col.inactive_border = " inactive_border;
    } else {
        print $0;
    }
}
' "$HYPRLAND_CONFIG" > "$TEMP_CONFIG"

# Перемещаем временный файл на место конфигурационного
mv "$TEMP_CONFIG" "$HYPRLAND_CONFIG"

# Перезагружаем конфигурацию Hyprland
hyprctl reload

# Путь к вашему конфигурационному файлу Hyprlock
HYPRLOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"

# Создаем временный файл для новой конфигурации
TEMP_HYPRLOCK_CONFIG=$(mktemp)

# Обновляем цвета в конфигурации Hyprlock
awk -v background_color="$BACKGROUND_COLOR" -v foreground_color="$FOREGROUND_COLOR" '
{
    if ($1 == "color" && $3 ~ /^rgba\([a-fA-F0-9]+\)$/) {
        print "    color = " background_color;
    } else if ($1 == "color" && $2 == "=" && $3 ~ /^rgba\([a-fA-F0-9]+\)$/) {
        print "    color = " foreground_color;
    } else {
        print $0;
    }
}
' "$HYPRLOCK_CONFIG" > "$TEMP_HYPRLOCK_CONFIG"

# Перемещаем временный файл на место конфигурационного
mv "$TEMP_HYPRLOCK_CONFIG" "$HYPRLOCK_CONFIG"

# Проверяем, что конфигурация была обновлена
if cmp -s "$HYPRLOCK_CONFIG" "$TEMP_HYPRLOCK_CONFIG"; then
    echo "Конфигурация Hyprlock успешно обновлена."
else
    echo "Ошибка при обновлении конфигурации Hyprlock."
    cp "$TEMP_HYPRLOCK_CONFIG" "$HYPRLOCK_CONFIG"
fi

# Обновление конфигурационного файла Dunst
DUNST_CONFIG="$HOME/.config/dunst/dunstrc"

# Цвета для Dunst
DUNST_BACKGROUND_COLOR="${COLORS[0]}"
DUNST_FOREGROUND_COLOR="${COLORS[7]}"

# Создаем временный файл для новой конфигурации Dunst
TEMP_DUNST_CONFIG=$(mktemp)

# Обновляем цвета в конфигурации Dunst
awk -v background_color="$DUNST_BACKGROUND_COLOR" -v foreground_color="$DUNST_FOREGROUND_COLOR" '
{
    if ($1 == "background" && $2 == "=") {
        print "background = \"" background_color "\"";
    } else if ($1 == "foreground" && $2 == "=") {
        print "foreground = \"" foreground_color "\"";
    } else {
        print $0;
    }
}
' "$DUNST_CONFIG" > "$TEMP_DUNST_CONFIG"

# Перемещаем временный файл на место конфигурационного
mv "$TEMP_DUNST_CONFIG" "$DUNST_CONFIG"

# Перезагружаем Dunst
killall dunst
dunst &
