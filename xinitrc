#!/bin/sh

while true; do
    volumena=`pactl list sinks | awk '/Volume/ {print $5; exit}'`
    data=`date +"%Bk %d %A %H:%M" | sed -e "s/\b\(.\)/\u\1/g"`
    B0=`cat /sys/class/power_supply/BAT0/capacity`
    B1=`cat /sys/class/power_supply/BAT1/capacity`
    xsetroot -name "B0: $B0% | B1: $B1% | V: $volumena | $data"
done &


exec dwm

