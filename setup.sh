#!/bin/sh

CONFIGROOT=$(git rev-parse --show-toplevel)

echo "setup configs from: ${CONFIGROOT}"

mkdir -p $HOME/.config

ln -sf $CONFIGROOT/Xresources $HOME/.Xresources
ln -sf $CONFIGROOT/xinitrc $HOME/.xinitrc
ln -sf $CONFIGROOT/rofi $HOME/.config/

echo "basic utility completed"

ln -sf $CONFIGROOT/mpd $HOME/.config/

echo "app setup completed"

mkdir -p $HOME/.config/ibus/rime
ln -sf $CONFIGROOT/rime/default.custom.yaml $HOME/.config/ibus/rime/
ln -sf $CONFIGROOT/rime/ibus_rime.custom.yaml $HOME/.config/ibus/rime/
ln -sf $CONFIGROOT/rime/default.custom.yaml $HOME/.local/share/fcitx5/rime/
ln -sf $CONFIGROOT/rime/ibus_rime.custom.yaml $HOME/.local/share/fcitx5/rime/
ln -sf $CONFIGROOT/xprofile $HOME/.xprofile
echo "input method setup completed"

ln -sf $CONFIGROOT/dwm $HOME/.dwm

echo "dwm setup completed"

ln -sf $CONFIGROOT/fontconfig $HOME/.config/
echo "font config completed"

# ln -sf $CONFIGROOT/autostart $HOME/.config/
# echo "xfce4 config completed"
