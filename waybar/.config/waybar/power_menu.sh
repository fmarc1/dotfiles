#!/bin/bash

choice=$(printf "Shutdown\nReboot\nSuspend\nCancel" | wofi --dmenu --width 200 --height 200 --prompt "Power")

case "$choice" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) systemctl suspend ;;
  *) exit 0 ;;
esac
