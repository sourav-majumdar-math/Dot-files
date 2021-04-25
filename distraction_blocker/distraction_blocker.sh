#!/bin/bash
cd /home/sourav/distraction_blocker

mapfile -t blocks < list.txt

while :
do
	check_firefox_running=$(ps -e | grep "firefox")
	if [[ -n "$check_firefox_running" ]]; then
		list_of_windows_open="$(bt list)"
		readarray -t array <<< $list_of_windows_open
		for i in ${blocks[@]}; do
			block_matches="$( printf -- '%s\n' "${array[@]}" | grep  "$i")"
			if [[ -n "$block_matches" ]]; then
				id_block=$(echo "$block_matches" | grep -oh '[a-z].*[0-9].*[0-9]')
				for j in ${id_block[@]}; do
					bt close $j; 
				done
				notify-send -u critical "Blocked: "$i
			fi
		done
	fi
done
