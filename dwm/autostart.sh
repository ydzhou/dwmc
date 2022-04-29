#!/bin/sh

WALLPAPER=~/Pictures/wp/xb2wp04.jpg

imwheel &

picom -b --config ~/dwmc/compton.conf &

# xfce4-panel --disable-wm-check &

feh --bg-fill ${WALLPAPER} &

ibus-daemon -drxR &

while true; do
    xsetroot -name "$(date +'%B%d %A %I:%M')"
    sleep 2
done
