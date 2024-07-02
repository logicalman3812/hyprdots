#!/bin/bash

send_signal() {
    if pgrep -x "waybar" > /dev/null
    then
        killall "$1" waybar
    fi
}

send_signal -SIGUSR1

send_signal -SIGUSR2

