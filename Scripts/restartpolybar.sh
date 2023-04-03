#!/bin/bash

DMENU='dmenu'
choice=$(echo -e "restart\nkill\nstart" | $DMENU -p "Polybar")

case "$choice" in
	restart) killall polybar && polybar topbar && polybar topbar1 & ;;
	kill) killall polybar;;
	start) polybar topbar && polybar topbar1
esac
