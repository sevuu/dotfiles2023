#!/bin/bash
DMENU='dmenu'
choice=$(echo -e "kill\nstart" | $DMENU -p "Picom")

case "$choice" in
  kill) killall picom & ;;
  start) picom -c & ;;
esac
