pkill polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    	MONITOR=$m polybar --reload main &
	echo $MONITOR
done
