#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
killall -q nm-applet
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bar_i3 -r &
sleep 0.5
nm-applet&
