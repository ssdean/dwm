#! /bin/bash

# $HOME/.dwm/autostart

feh --bg-scale /home/steven/Pictures/Wallpapers/beiheng-guo-IAVVv6z3D6g-unsplash.jpg &
picom &

while true; do
    $HOME/.dwm/status.sh
    sleep 30s
done

exit 0
