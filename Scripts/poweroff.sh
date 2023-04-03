#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU='dmenu'
choice=$(echo -e "exit\nshutdown\nreboot" | $DMENU)

case "$choice" in
  exit) bspc quit & ;;
  shutdown) sudo shutdown -h now & ;;
  reboot) sudo shutdown -r now & ;;
esac
