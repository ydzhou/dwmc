#!/bin/sh

xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/springhill.jpg

feh --bg-fill ${WALLPAPER} &

pgrep -x picom > /dev/null || picom -b --config $HOME/linuxc/picom/dwm.conf

pgrep -x ibus-daemon > /dev/null ||  ibus-daemon -drxR
