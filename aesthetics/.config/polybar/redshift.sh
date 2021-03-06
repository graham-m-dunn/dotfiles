#!/usr/bin/env bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

if pgrep -x redshift &> /dev/null; then
    temp=$(redshift -p 2>/dev/null | grep temp | cut -d' ' -f3)
    temp=${temp//K/}
fi

# OPTIONAL: Append ' ${temp}K' after $icon
if [[ -z $temp ]]; then
    echo "%{F#65737E}$icon"       # Greyed out (not running)
elif [[ $temp -ge 5000 ]]; then
    echo "%{F#8FA1B3}$icon"       # Blue
elif [[ $temp -ge 4000 ]]; then
    echo "%{F#EBCB8B}$icon"       # Yellow
else
    echo "%{F#D08770}$icon"       # Orange
fi
