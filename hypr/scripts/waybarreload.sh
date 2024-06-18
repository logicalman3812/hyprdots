#!/bin/bash

# Функция для отправки сигнала процессу waybar
send_signal() {
    # Проверяем, существует ли процесс с именем waybar
    if pgrep -x "waybar" > /dev/null
    then
        # Если процесс существует, отправляем указанный сигнал
        killall "$1" waybar
        echo "Сигнал $1 отправлен для waybar."
    fi
}

# Отправляем сигнал SIGUSR1
send_signal -SIGUSR1

# Отправляем сигнал SIGUSR2
send_signal -SIGUSR2

