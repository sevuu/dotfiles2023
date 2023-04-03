!#/bin/bash
maim -u -i $(xdotool getactivewindow) /tmp/screenshot.png
feh -x -F /tmp/screenshot.png &
id=$!
maim -s | xclip -selection clipboard -t image/png
kill $id
