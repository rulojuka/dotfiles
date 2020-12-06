#!/bin/sh
lock() {
  i3lock -c 111111 -f
}

case "$1" in
  lock)
    lock
    ;;
  suspend)
    lock && systemctl suspend
    ;;
  reboot)
    systemctl reboot
    ;;
  shutdown)
    systemctl poweroff
    ;;
  *)
    echo "Usage: $0 {lock|suspend|reboot|shutdown}"
    exit 2
esac

exit 0
