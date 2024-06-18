#!/usr/bin/env sh

# Use different directory on NixOS
if [ -d /run/current-system/sw/libexec ]; then
    libDir=/run/current-system/sw/libexec
else
    libDir=/usr/lib
fi

${libDir}/polkit-gnome/polkit-gnome-authentication-agent-1 &
