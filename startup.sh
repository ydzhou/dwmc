#!/bin/sh

xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/arch01.png

# /usr/bin/pkill imwheel && imwheel -b "45" &

pgrep -x picom > /dev/null || picom -b --config $HOME/linuxc/compton.conf

feh --bg-fill ${WALLPAPER} &

pgrep -x ibus-daemon > /dev/null ||  ibus-daemon -drxR
