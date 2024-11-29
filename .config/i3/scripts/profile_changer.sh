#!/bin/sh

# Next profile
asusctl profile -n

# Send notification
notify-send -i $HOME/.local/share/icons/rog.svg "$(asusctl profile -p | grep profile)"
