#!/bin/sh

WALLPAPER=
COMPTON_CONFIG=

dwmblocks &

if [ -f "$COMPTON_CONFIG" ]; then
    compton -b --config ${COMPTON_CONFIG} &
fi

if [ -f "$WALLPAPER" ]; then
    feh -F ${WALLPAPER}
fi
