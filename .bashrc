# ██████╗░░█████╗░███████╗██╗░░██╗██████╗░░██████╗
# ██╔══██╗██╔══██╗██╔════╝██║░░██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║░░░░░
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║░░░░░
# ██████╔╝██║░░██║███████║██║░░██║██║░░██║╚██████╗
# ╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝

#░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░ ENVIRONMENT VARIABLES ░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░ 

export PATH="$PATH:$HOME/.local/bin/"

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

#░░░░░░░░░░░░░
#░░ PROMPTS ░░
#░░░░░░░░░░░░░ 

if [ -n "$SSH_CONNECTION" ]; then
export PS1="\[$(tput setaf 1)\]┌─╼ [$(tput setaf 7)\] \u \[$(tput setaf 1)\]╺─╸\[$(tput setaf 7)\] \H \[$(tput setaf 7)\][\w]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼ \[$(tput setaf 7)\][ssh]\"; else echo \"\[$(tput setaf 1)\]└╼ \[$(tput setaf 7)\][ssh]\"; fi) \[$(tput setaf 7)\]"
else
export PS1="\[$(tput setaf 1)\]┌─╼\[$(tput setaf 3)\] \u\[$(tput setaf 1)\] ╺─╸\[$(tput setaf 1)\] \H \[$(tput setaf 7)\][\[$(tput setaf 5)\]\w\[$(tput setaf 7)\]]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼\"; else echo \"\[$(tput setaf 1)\]└╼\"; fi) \[$(tput setaf 7)\]"
fi

#Call neofetch on open
neofetch

#█▓▒░ Some aliases
alias grep='grep --color=auto'
alias useful="vim /home/$USER/Documents/useful/useful"
alias c="cd /home/$USER/Documents/c"
alias c++="cd /home/$USER/Documents/c++"
alias pythondev="cd /home/$USER/Documents/python"
alias webdev="cd /home/$USER/Documents/web-development"
alias usb="sudo mount /dev/sdb1 /media/usb && cd /media/usb && ls -a" 
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

#█▓▒░ Edit files
alias startpage="vim /home/$USER/.mozilla/startpage.html"

#█▓▒░ Pywal
alias wall="/home/$USER/.scripts/walcycle.sh"
alias wall1="wal -f /home/$USER/.colors/cyberpunk.json"
alias wall2="wal -i /home/$USER/Pictures/wall/wall4.png"
alias wall3="wal -i /home/$USER/Pictures/wall/744069.jpg"
alias wall4="wal -i /home/$USER/Pictures/wall/wall.jpg"
alias wall5="wal -i /home/$USER/Pictures/wall/1545522913536.jpg"
alias wall6="wal -i /home/$USER/Pictures/wall/wall6.jpg"
alias wall7="wal -i /home/$USER/Pictures/wall/wall7.jpg"
alias wall8="wal -i /home/$USER/Pictures/wall/wall8.jpg"
alias wall9="wal -i /home/$USER/Pictures/wall/wall9.jpg"
alias wall10="wal -i /home/$USER/Pictures/wall/wall10.jpg"

#█▓▒░ Add to 'useful' file
alias adduseful="python $HOME/.scripts/add-to-useful.py"

#█▓▒░ Add to 'pkgs' file
alias addpkg='python $HOME/.scripts/pkg-installer/pkg-installer.py'

#█▓▒░ Fun scripts
alias snow="/home/$USER/.scripts/./snow.sh"
alias pipes="/home/$USER/.scripts/./pipes.sh -p 10"
alias pipesx="/home/$USER/.scripts/./pipesX.sh"
alias keylog="python /home/$USER/Documents/python/python-keylogger/main.py"
