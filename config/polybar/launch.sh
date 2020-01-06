#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)

if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top -c ~/.config/polybar/config &
    MONITOR=$m polybar --reload bottom -c ~/.config/polybar/config &
  done
else
polybar --reload mainbar-i3 -c ~/.config/polybar/config &
fi
