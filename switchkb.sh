#!/bin/sh

KEYBOARD_DEVICE="at-translated-set-2-keyboard"  

hyprctl switchxkblayout "$KEYBOARD_DEVICE" next

CURRENT_LAYOUT=$(hyprctl devices -j | jq -r ".keyboards[] | select(.name == \"$KEYBOARD_DEVICE\") | .active_keymap")

notify-send "Layout Changed" "Current layout: ${CURRENT_LAYOUT}"