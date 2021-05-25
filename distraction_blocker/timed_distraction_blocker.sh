#!/bin/bash
cd /home/sourav/distraction_blocker

mapfile -t blocks < timed_list.txt

n_lines=$(wc -l timed_list.txt | awk '{print $1}')
n_lines_for_loop=$(($n_lines-1))
while :
do
	check_firefox_running=$(ps -e | grep "firefox")
	if [[ -n "$check_firefox_running" ]]; then
		list_of_windows_open="$(bt list)"
		readarray -t array <<< $list_of_windows_open
		for i in $(seq 0 $n_lines_for_loop); do
			site=$(echo ${blocks[$i]} | awk '{print $1}')
			block_matches="$( printf -- '%s\n' "${array[@]}" | grep  "$site")"
			if [[ -n "$block_matches" ]]; then
				
				now=$(date +"%s")

				start_read=$(echo ${blocks[$i]} | awk '{print $2}')	
				start=$(date --date="$start_read" +%s)

				end_read=$(echo ${blocks[$i]} | awk '{print $3}')
  	                        end=$(date --date="$end_read" +%s)
				
				if [ "$now" -lt "$end" ] && [ "$now" -gt "$start" ]; then
					id_block=$(echo "$block_matches" | grep -oh '[a-z].*[0-9].*[0-9]')
					for j in ${id_block[@]}; do
						bt close $j; 
					done
					notify-send -u critical "Blocked: "$site
				fi
			fi
		done
	fi
done
