#!/bin/bash

date_today=$(date +"%Y-%m-%d")

file_to_look="/home/sourav/vimwiki/diary/"$date_today".wiki"

TERMINAL="alacritty"

if [[ -f "$file_to_look" ]]; then
	exec $TERMINAL -t "To-do" --hold -o colors.cursor.cursor=CellBackground -e cat $file_to_look
else
	notify-send "No-plans done for today"
fi	
