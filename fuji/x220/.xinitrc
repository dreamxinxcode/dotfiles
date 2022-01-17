[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

feh --bg-fill ~/Pictures/wal/fuji.jpg

fc-cache -f 
picom &
xsetroot -cursor_name left_ptr
killall polybar
(sleep 2; polybar mybar -r) &
exec bspwm
nvm use 14.17.1
xset +fp /home/arch/.local/share/fonts
xset fp rehash
