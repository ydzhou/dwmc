#!/bin/sh

CONFIGROOT=$(git rev-parse --show-toplevel)

echo "setup configs from: ${CONFIGROOT}"

mkdir -p $HOME/.config

ln -sf $CONFIGROOT/Xresources $HOME/.Xresources
ln -sf $CONFIGROOT/xinitrc $HOME/.xinitrc

echo "basic utility completed"

mkdir -p $HOME/.local/share/fcitx5/rime/
ln -sf $CONFIGROOT/rime/default.custom.yaml $HOME/.local/share/fcitx5/rime/
ln -sf $CONFIGROOT/rime/ibus_rime.custom.yaml $HOME/.local/share/fcitx5/rime/
ln -sf $CONFIGROOT/xprofile $HOME/.xprofile
echo "input method setup completed"

ln -sf $CONFIGROOT/dwm $HOME/.dwm

echo "dwm setup completed"

ln -sf $CONFIGROOT/fontconfig $HOME/.config/
echo "font config completed"
