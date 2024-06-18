#!/usr/bin/env sh

scrDir=$(dirname "$(realpath "$0")")

# Define functions

print_error () {
    cat <<EOF
    ./volumecontrol.sh -[device] <actions>
    ...valid device are...
        i   -- input device
        o   -- output device
        p   -- player application
    ...valid actions are...
        i   -- increase volume [+5]
        d   -- decrease volume [-5]
        m   -- mute [x]
EOF
    exit 1
}

notify_vol () {
    echo "Volume: $vol"
    echo "Input Device: $mic_vol"
    notify-send -t 300 "Volume: $vol" -i "${icodir}"
}

notify_mute () {
    mute=$(pamixer "${srce}" --get-mute | cat)
    mic_mute=$(pamixer --default-source --get-mute | cat)
    [ "${srce}" == "--default-source" ] && dvce="mic" || dvce="speaker"
    if [ "${mute}" == "true" ] ; then
        echo "Muted"
        notify-send -t 300 "Muted" -i "${icodir}"
    else
        echo "Unmuted"
        notify-send -t 300 "Unmuted" -i "${icodir}" 
    fi
}

action_pamixer () {
    pamixer "${srce}" -"${1}" "${step}"
    vol=$(pamixer "${srce}" --get-volume | cat)
    mic_vol=$(pamixer --default-source --get-volume | cat)
    notify_vol
}

action_playerctl () {
    [ "${1}" == "i" ] && pvl="+" || pvl="-"
    playerctl --player="${srce}" volume 0.0"${step}""${pvl}"
    vol=$(playerctl --player="${srce}" volume | awk '{ printf "%.0f\n", $0 * 100 }')
    mic_vol=$(pamixer --default-source --get-volume | cat)
    notify_vol
}

# Evaluate device option

while getopts iop: DeviceOpt; do
    case "${DeviceOpt}" in
        i) nsink=$(pamixer --list-sources | awk -F '"' 'END {print $(NF - 1)}')
            [ -z "${nsink}" ] && echo "ERROR: Input device not found..." && exit 0
            ctrl="pamixer"
            srce="--default-source" ;;
        o) nsink=$(pamixer --get-default-sink | awk -F '"' 'END{print $(NF - 1)}')
            [ -z "${nsink}" ] && echo "ERROR: Output device not found..." && exit 0
            ctrl="pamixer"
            srce="" ;;
        p) nsink=$(playerctl --list-all | grep -w "${OPTARG}")
            [ -z "${nsink}" ] && echo "ERROR: Player ${OPTARG} not active..." && exit 0
            ctrl="playerctl"
            srce="${nsink}" ;;
        *) print_error ;;
    esac
done

# Set default variables

shift $((OPTIND -1))
step="${2:-5}"
icodir="${confDir}/dunst/volume.png"


# Execute action

case "${1}" in
    i) action_${ctrl} i ;;
    d) action_${ctrl} d ;;
    m) "${ctrl}" "${srce}" -t && notify_mute && exit 0 ;;
    *) print_error ;;
esac

