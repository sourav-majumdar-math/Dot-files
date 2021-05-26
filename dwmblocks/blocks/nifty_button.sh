#!/bin/bash

NSE=$(/home/sourav/ticker.sh ^NSEI)
result=$(sed 's/\^NSEI/NIFTY/g'<<<"$NSE")

NASDAQ=$(/home/sourav/ticker.sh ^NDX)
result_nasdaq=$(sed 's/\^NDX/NASDAQ 100/g'<<<"$NASDAQ")

NIFTY_NEXT_50=$(/home/sourav/ticker.sh ^NSMIDCP)
result_nifty_next_50=$(sed 's/\^NSMIDCP/NIFTY N50/g'<<<"$NIFTY_NEXT_50")


TERMINAL="alacritty"

exec $TERMINAL -t "Notification-Market" --hold -o colors.cursor.cursor=CellBackground background_opacity=1 font.size=11.0 -e printf "\n\n\n %b\n %b\n %b" "$result" "$result_nifty_next_50" "$result_nasdaq" 

