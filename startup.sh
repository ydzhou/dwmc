#!/bin/sh

xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/arch01.png

feh --bg-fill ${WALLPAPER} &

pgrep -x picom > /dev/null || picom -b --config $HOME/linuxc/compton.conf

pgrep -x ibus-daemon > /dev/null ||  ibus-daemon -drxR
