#!/bin/sh

xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/girl02.jpg

feh --bg-fill ${WALLPAPER} &

pgrep -x picom > /dev/null || picom -b --config $HOME/linuxc/picom/dwm.conf

pkill ibus-daemon > /dev/null 
# env GDK_SCALE=1.0 GDK_DPI_SCALE=1 ibus-daemon -drxR
fcitx5 &
