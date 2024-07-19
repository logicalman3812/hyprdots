
#!/bin/bash

# Директория с темами
themes_dir="$HOME/.config/wal/colorschemes/dark"
ROFI_CONFIG_PATH="$HOME/.config/rofi/themeswitch.rasi"
config_dir="$HOME/.config"

# Получение списка тем
themes=$(ls -d "$themes_dir"/*/ | xargs -n 1 basename)

# Выбор темы с помощью rofi
selected_theme=$(echo "$themes" | rofi -dmenu -p "Select theme" -config "$ROFI_CONFIG_PATH")

# Проверка, выбрана ли тема
if [ -z "$selected_theme" ]; then
	echo "No theme selected or invalid selection."
	exit 1
fi

# Путь к выбранной теме
theme_dir="$themes_dir/$selected_theme"

# Функция копирования файлов
copy_files() {
	local source_dir="$1"
	local target_dir="$2"

	mkdir -p "$target_dir"

	for file in "$source_dir"/*; do
		if [ -d "$file" ]; then
			copy_files "$file" "$target_dir/$(basename "$file")"
		else
			cp "$file" "$target_dir"
		fi
	done
}

# Копирование файлов из выбранной темы в конфигурацию
copy_files "$theme_dir" "$config_dir"

# Проверка наличия .zshrc и копирование в домашнюю директорию
if [ -f "$theme_dir/.zshrc" ]; then
	cp "$theme_dir/.zshrc" "$HOME"
	echo ".zshrc has been copied to the home directory."
fi

echo "Theme '$selected_theme' has been applied."

