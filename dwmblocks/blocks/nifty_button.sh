#!/bin/bash

NASDAQ=$(/home/sourav/ticker.sh ^NDX)
result_nasdaq=$(sed 's/\^NDX/NASDAQ 100/g'<<<"$NASDAQ")

NIFTY_NEXT_50=$(/home/sourav/ticker.sh ^NSMIDCP)
result_nifty_next_50=$(sed 's/\^NSMIDCP/NEXT 50/g'<<<"$NIFTY_NEXT_50")


TERMINAL="alacritty"

exec $TERMINAL -t "Notification-Market" --hold -o colors.cursor.cursor=CellBackground -e printf "\n\n\n %b\n %b" "$result_nifty_next_50" "$result_nasdaq" 

