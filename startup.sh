#!/bin/sh

xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/xb2wp04.jpg

imwheel -k --wheel-fifo -b "45"

picom -b --config $HOME/linuxc/compton.conf

feh --bg-fill ${WALLPAPER} &

ibus-daemon -drxR
