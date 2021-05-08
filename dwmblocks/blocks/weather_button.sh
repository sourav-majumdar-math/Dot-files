#!/bin/bash

TERMINAL="alacritty"

exec $TERMINAL -t "Notification-Weather" --hold -o colors.cursor.cursor=CellBackground -e curl wttr.in
