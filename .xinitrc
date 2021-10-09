[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#wal -f /home/$USER/.colors/cyberpunk.json                  # cyberpunk
#wal -i /home/$USER/Pictures/wall/006.jpg                   # green anime
#wal -i /home/$USER/Pictures/wall/wall4.jpg                 # purple galaxy
#wal -i /home/$USER/Pictures/wall/wall.jpg                  # purple lavender
wal -i /home/$USER/Pictures/wal/1540443829364.jpg          # bonsai
#wal -i /home/$USER/Pictures/wal/wall6.jpg                  # forest
#wal -i /home/$USER/Pictures/wal/SeaOwl\ Wallpaper\ FHD.png # owl
#wal -i /home/$USER/Pictures/wal/leaves_plant_green_163633_3840x2160.jpg # plant
#wal -i /home/$USER/Pictures/wal/uv.jpg                  # purple
fc-cache -f 
picom &
xsetroot -cursor_name left_ptr
killall polybar
(sleep 2; polybar mybar -r) &
urxvt &
#dunst &
exec bspwm
nvm use 14.17.1
xset +fp /home/arch/.local/share/fonts
xset fp rehash
# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd
