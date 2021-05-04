#!/bin/bash

mem_list=($(cat /proc/meminfo | awk '{print $2}'))

ram_free=$(($(($((${mem_list[0]}-${mem_list[1]}))-${mem_list[3]}))-${mem_list[4]})) # Total -free -buffer -cahed

i=0

check_less_than_1024=$(echo "$ram_free < 1024" | bc)
while [[ $check_less_than_1024 -ne 1 ]]
do
	ram_free=$(bc <<< "scale=3;$ram_free/1024")
	i=$(($i+1))
	check_less_than_1024=$(echo "$ram_free < 1024" | bc)
done

if [[ $i == 0 ]]; then
	u="KB"
	printf "|  %.1f %s" "$ram_free" "$u"
elif [[ $i == 1 ]]; then
	u="MB"
	printf "|  %.1f %s" "$ram_free" "$u"
elif [[ $i == 2 ]]; then
	u="GB"
	printf "|  %.2f %s" "$ram_free" "$u"
fi

