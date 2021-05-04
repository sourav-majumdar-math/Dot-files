#!/bin/bash

wifi_perc_text=$(cat "/proc/net/wireless" | awk '{print $3}' | grep -o '[0-9]\+')

re='^[0-9]+$'

if ! [[ $wifi_perc_text =~ $re ]]; then
	wifi_perc="NA";
	wifi_r_speed="NA";
	wifi_t_speed="NA";
else
	wifi_perc=$(($(($wifi_perc_text*100))/70));
fi

i=0
j=0
if ! [[ $wifi_perc == "NA" ]]; then
	
	old_r_data=$(cat "/sys/class/net/wlo1/statistics/rx_bytes");
	old_t_data=$(cat "/sys/class/net/wlo1/statistics/tx_bytes");
	
	sleep 0.1
	
	new_r_data=$(cat "/sys/class/net/wlo1/statistics/rx_bytes");
	new_t_data=$(cat "/sys/class/net/wlo1/statistics/tx_bytes");

	wifi_r_speed=$(($(($new_r_data-$old_r_data))*10))
	wifi_t_speed=$(($(($new_t_data-$old_t_data))*10))

	while [ $wifi_r_speed -gt 1024 ]
	do
		wifi_r_speed=$(($wifi_r_speed/1024))
		i=$(($i+1))
	done

	if [[ $i == 0 ]]; then
		u_r="B/s"
	fi
	if [[ $i == 1 ]]; then
		u_r="KB/s"
	fi
	if [[ $i == 2 ]]; then
		u_r="MB/s"
	fi
	
	while [ $wifi_t_speed -gt 1024 ]
	do
		wifi_t_speed=$(($wifi_t_speed/1024))
		j=$(($j+1))
	done

	if [[ $j == 0 ]]; then
		u_t="B/s"
	fi
	if [[ $j == 1 ]]; then
		u_t="KB/s"
	fi
	if [[ $j == 2 ]]; then
		u_t="MB/s"
	fi


fi

wifi_name=$(iwgetid | grep -oP '"\K[^"]+')

printf "|  %s ↓ %s%s ↑ %s%s %s%%" "$wifi_name" "$wifi_r_speed" "$u_r" "$wifi_t_speed" "$u_t" "$wifi_perc"
