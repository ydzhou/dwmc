#!/bin/sh

. $HOME/linuxc/CONFIG

xrdb -merge ~/.Xresources

if [ "$WALLPAPER_FEH" ]
then
    feh --bg-fill ${WALLPAPER} &
fi

if [ "$PICOM" ]
then
    pgrep -x picom > /dev/null || picom -b --config $HOME/linuxc/picom/dwm.conf
fi

sleep 1s

if [ "$SYSTRAY" ]
then
    /usr/bin/volumeicon &
    /usr/bin/nm-applet &
fi

if [ "$FCITX5" ]
then
    fcitx5 &
fi
