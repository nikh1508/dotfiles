#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -blur 0x9 /tmp/screen.png
#convert /tmp/screen.png -scale 70% -scale 142.82% /tmp/screen.png
[[ -f /home/nikh1508/.config/i3/lockscreen/lock.png ]] && convert /tmp/screen.png /home/nikh1508/.config/i3/lockscreen/lock.png  -gravity center -composite -matte /tmp/screen.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
i3lock -i /tmp/screen.png
rm /tmp/screen.png
