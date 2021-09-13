#!/bin/bash

result=$(sed 's/ \^NSEI/NIFTY/g'<<<"$NSE")

result_nasdaq=$(sed 's/\^NDX/NASDAQ 100/g'<<<"$NASDAQ")

result_nifty_next_50=$(sed 's/\^NSMIDCP/NIFTY N50/g'<<<"$NIFTY_NEXT_50")

result_SZSE=$(sed 's/399106.SZ/SZSE/g'<<<"$SZSE")

snapshot=$(ticker.sh ^NSEI ^NSMIDCP ^NDX 399106.SZ)

snapshot_clean=$( echo "$snapshot" | sed 's/\^NSEI/NIFTY/g' | sed 's/\^NSMIDCP/NIFTY N50/g' | sed 's/\^NDX/NASDAQ 100/g'| sed 's/399106.SZ/SZSE/g')
TERMINAL="alacritty"

exec $TERMINAL -t "Notification-Market" --hold -o colors.cursor.cursor=CellBackground window.opacity=1 font.size=11.0 -e printf "\n\n\n%b" "$snapshot_clean"

