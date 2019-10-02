#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)

if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'DP-4' ]; then
        MONITOR=$m polybar --reload top -c ~/.config/polybar/config &
        MONITOR=$m polybar --reload bottom -c ~/.config/polybar/config &
    elif [ $m == 'HDMI-0' ]; then
        MONITOR=$m polybar --reload top -c ~/.config/polybar/config &
        MONITOR=$m polybar --reload bottom -c ~/.config/polybar/config &
    else
        MONITOR=$m polybar --reload top -c ~/.config/polybar/config &
        MONITOR=$m polybar --reload bottom -c ~/.config/polybar/config &
    fi
  done
else
polybar --reload mainbar-i3 -c ~/.config/polybar/config &
fi
