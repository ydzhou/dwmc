#!/bin/sh

CONFIGROOT=$(git rev-parse --show-toplevel)

echo "setup configs from: ${CONFIGROOT}"

mkdir -p .config

ln -sf $CONFIGROOT/Xresources $HOME/.Xresources
ln -sf $CONFIGROOT/xinitrc $HOME/.xinitrc
ln -sf $CONFIGROOT/imwheelrc $HOME/.imwheelrc
ln -sf $CONFIGROOT/config/dunst $HOME/.config/dunst

echo "common setup completed"

ln -sf $CONFIGROOT/dwm $HOME/.dwm

echo "dwm setup completed"
