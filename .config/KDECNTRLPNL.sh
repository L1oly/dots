#!/bin/bash
if pgrep -f "systemd-inhibit --what=idle" > /dev/null
then
    pkill -f "systemd-inhibit --what=idle"
    notify-send "Режим презентації" "ВИМКНЕНО. Екран знову засинатиме." --icon=monitor-symbolic
else
    notify-send "Режим презентації" "УВІМКНЕНО. Екран НЕ згасне." --icon=monitor-symbolic
    systemd-inhibit --what=idle:sleep --why="Режим презентації" sleep infinity
fi
