#!/bin/sh

WALLPAPER=~/Pictures/archwp01.png

imwheel &

picom -b --config ~/dwmc/compton.conf &

feh --bg-fill ${WALLPAPER} &

# ibus-daemon -drxR &
fcitx5 &

while true; do
    xsetroot -name "$(date +'%B%d %A %I:%M')"
    sleep 2
done
