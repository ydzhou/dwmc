#!/bin/sh

# xrdb -merge ~/.Xresources

WALLPAPER=$HOME/Pictures/archwp01.png

pgrep -x imwheel > /dev/null || imwheel &

picom -b --config $HOME/linuxc/compton.conf &

feh --bg-fill ${WALLPAPER} &

ibus-daemon -drxR &
