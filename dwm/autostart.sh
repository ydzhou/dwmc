#!/bin/sh

WALLPAPER=~/Pictures/wp/xb2wp04.jpg

dwmblocks &

imwheel &

# picom -b --config ~/dwmconfigs/compton.conf &

feh --bg-fill ${WALLPAPER} &
