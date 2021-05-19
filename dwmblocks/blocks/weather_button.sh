#!/bin/bash

TERMINAL="alacritty"
city="Gandhinagar"
url="wttr.in/"$city
exec $TERMINAL -t "Notification-Weather" --hold -o colors.cursor.cursor=CellBackground -e curl --no-progress-meter $url 
