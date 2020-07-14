[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#wal -f /home/$USER/.colors/cyberpunk.json     # cyberpunk
#wal -i /home/$USER/Pictures/wall/006.jpg      # green anime
#wal -i /home/$USER/Pictures/wall/wall4.jpg    # purple galaxy
#wal -i /home/$USER/Pictures/wall/wall.jpg     # purple lavender
wal -i /home/$USER/Pictures/wal/1540443829364.jpg      # bonsai
compton &
xsetroot -cursor_name left_ptr
killall polybar
(sleep 2; polybar mybar -r) &
urxvt &
exec bspwm
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
