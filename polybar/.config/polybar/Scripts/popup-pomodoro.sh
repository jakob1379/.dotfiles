#!/bin/sh

BAR_HEIGHT=25  # polybar height
BORDER_SIZE=1  # border size from your wm settings
YAD_WIDTH=182  # 222 is minimum possible value
YAD_HEIGHT=93 # 193 is minimum possible value

case "$1" in
    --popup)
        if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
            exit 0
        fi

        eval "$(xdotool getmouselocation --shell)"
        eval "$(xdotool getdisplaygeometry --shell)"

        # X
        if [ "$((X + YAD_WIDTH / 2 + BORDER_SIZE))" -gt "$WIDTH" ]; then #Right side
            : $((pos_x = WIDTH - YAD_WIDTH - BORDER_SIZE))
        elif [ "$((X - YAD_WIDTH / 2 - BORDER_SIZE))" -lt 0 ]; then #Left side
            : $((pos_x = BORDER_SIZE))
        else #Center
            : $((pos_x = X - YAD_WIDTH / 2))
        fi

        # Y
        if [ "$Y" -gt "$((HEIGHT / 2))" ]; then #Bottom
            : $((pos_y = HEIGHT - YAD_HEIGHT - BAR_HEIGHT - BORDER_SIZE))
        else #Top
            : $((pos_y = BAR_HEIGHT + BORDER_SIZE))
        fi

        font="Font Awesome 5 Brands 10"
        ans=$(yad --list \
                  --borders=0 \
                  --columns=1 \
                  --column=text --column=@fore@ --column=@font@ " /  Start-Stop" "" "$font" " /  Pause-Resume" "" "$font" " Pomodoro" "" "$font" \
                  --no-buttons \
                  --text-align="center" \
                  --no-headers \
                  --close-on-unfocus \
                  --title="yad-calendar" \
                  --posx="$pos_x" --posy="$pos_y" \
                  --height="$YAD_HEIGHT" --width="$YAD_WIDTH" |\
                  cut -d "|" -f 1)
        case "$ans" in
            " /  Start-Stop")
                gnome-pomodoro --start-stop
                ;;
            " /  Pause-Resume")
                gnome-pomodoro --pause-resume
                ;;
            " Pomodoro")
                gnome-pomodoro
                ;;
            *)
                echo "Not a valid selection..."
                ;;
        esac
        ;;
    *)
        echo "No popup here!"
        ;;
esac
