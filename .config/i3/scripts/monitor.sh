#!/bin/sh

echo $DOCKED_PRIMARY_MONITOR

echo $(xrandr | grep -w connected | grep $DOCKED_PRIMARY_MONITOR)
