#!/bin/sh

$HOME/linuxc/startup.sh &

while true; do
    xsetroot -name "$(hostname -i) | $(date +'%B %d %A %I:%M')"
    sleep 5
done
