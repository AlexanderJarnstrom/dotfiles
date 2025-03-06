#!/bin/sh

if xrandr | grep -q $1; then
  xrandr --output $1 --auto --left-of $2 --primary
  xrandr --output $2 --mode 1400x900 --scale 1
else 
  xrandr --output $1 --off
  xrandr --output $2 --mode 1920x1200 --primary
fi
