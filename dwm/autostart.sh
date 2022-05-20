#!/bin/sh

$HOME/linuxc/startup.sh &

while true; do
    xsetroot -name "$(date +'%B %d %A %I:%M')"
    sleep 2
done
