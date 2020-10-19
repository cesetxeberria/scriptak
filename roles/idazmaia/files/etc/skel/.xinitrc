#!/bin/sh

export QT_QPA_PLATFORMTHEME=gtk2

while true; do
    volumena=`pactl list sinks | awk '/Volume/ {print $5; exit}'`
    data=`date +"%Bk %d %A %H:%M" | sed -e "s/\b\(.\)/\u\1/g"`
    B0=`cat /sys/class/power_supply/BAT0/capacity`
    B1=`cat /sys/class/power_supply/BAT1/capacity`
    xsetroot -name "V: $volumena | $data"
done &

numlockx on &
volumeicon &
nm-applet &

exec dwm

