#!/bin/bash

# store toggle state so script knows if kb is on or off
STATE_FILE="/tmp/kbd_light_state"

#toggle light
if [[ -f "$STATE_FILE" && "$(cat "$STATE_FILE")" == "on" ]]; 
then
    openrgb --device 0 --mode Off
    echo "off" > "$STATE_FILE"
else
    openrgb --device 0 --mode Static --color "6996ff"
    echo "on" > "$STATE_FILE"
fi
