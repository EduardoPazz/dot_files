#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top-bar >>/tmp/polybar1.log 2>&1 & disown
polybar bottom-bar >>/tmp/polybar2.log 2>&1 & disown

echo "Bars launched..."
