#!/bin/sh

WALLPAPER=~/Pictures/wp/xb2wp04.jpg

imwheel &

# picom -b --config ~/dwmconfigs/compton.conf &

# xfce4-panel --disable-wm-check &

./statusbar.sh &

feh --bg-fill ${WALLPAPER} &

ibus-daemon -drxR &
