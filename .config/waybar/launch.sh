#!/bin/sh

killall waybar

if [[ $USER = "mika" ]]
then
    waybar
else
    waybar &
fi