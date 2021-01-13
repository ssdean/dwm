#! /bin/bash

# $HOME/.dwm/status.sh

datetime() {
    echo $(date +"%a %d %h %I:%M%p") 
}

battery() {
    bat=$(cat /sys/class/power_supply/BAT0/capacity | awk '{print $1"%"}')
    echo $bat
}

volume() {
    echo $(amixer get Master | sed -rn 's/.*\[([0-9]{1,3}\%)\].*/\1/p;n')
}

xsetroot -name "$(volume) $(datetime) $(battery)"

exit 0
