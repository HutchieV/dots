#!/usr/bin/env sh
#$ cat  ~/.config/polybar/launch.sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1
polybar top --config=$HOME/.config/polybar/config &
polybar bottom --config=$HOME/.config/polybar/config &

echo "Bars launched..."
