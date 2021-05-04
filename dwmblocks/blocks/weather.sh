#!/bin/bash

# Refer https://github.com/chubin/wttr.in for details

city="Gandhinagar"

report=$(curl --no-progress-meter wttr.in/Gandhinagar?format=3)

report_without_city=$(sed "s/$city//g"<<<"$report" | sed 's/://g')

printf "|%s" "$report_without_city" 
