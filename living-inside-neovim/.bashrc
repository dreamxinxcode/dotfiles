[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# my prompt
PS1="\[\033[32m\]  \[\033[37m\]\[\033[34m\]\w \[\033[0m\]"
PS2="\[\033[32m\]  > \[\033[0m\]"

neofetch

#█▓▒░ Configs
alias vimconfig="vim ~/.vimrc"
alias bspwmconfig="vim ~/.config/bspwm/bspwmrc"
alias sxhkdconfig="vim ~/.config/sxhkd/sxhkdrc"
alias polybarconfig="vim ~/.config/polybar/config"
alias dunstconfig="vim ~/.config/dunst/dunstrc"
alias rangerconfig="vim ~/.config/ranger/rc.conf"
alias neofetchconfig="vim ~/.config/neofetch/config.conf"
alias picomconfig="vim ~/.config/picom.conf"
alias useful="vim ~/Documents/useful/useful"

note() {
  NOTES=~/Documents/notes/notes
  [ "$1" = "clear" ] && truncate -s 0 $NOTES && return
  [ "$1" = "ls" ] && cat $NOTES && return 
  echo "$1" >> $NOTES
}

#█▓▒░ Commands
alias ls='ls --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias gh='history | grep'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

#█▓▒░ Git
alias ga="git add"
alias gcl="git clone"
alias gcm="git commit -m"
alias gma='git commit -am'
alias gst="git status"
alias glg="git log"
alias gpsh="git push"
alias gpll="git pull"

alias gf='git reflog'
alias gta='git tag -a -m'
alias gdf='git diff'
alias gbr='git branch'
alias gch='git checkout'
alias gra='git remote add'
alias grr='git remote rm'

#█▓▒░ Work
alias api="cd /home/arch/dev/timbertracks/timbertracks_api && make start && make shell"
alias webapp="cd /home/arch/dev/timbertracks/timbertracks_webapp && make run"
alias mobile="cd /home/arch/dev/timbertracks/timbertracks_mobile_v2 && make run"

#█▓▒░ Fun scripts
alias snow="~/.scripts/./snow.sh"
alias pipes="~/.scripts/./pipes.sh -p 10"
alias pipesx="~/.scripts/./pipesX.sh"

#█▓▒░ YouTube-dl to download stuffs
alias yt='youtube-dl --extract-audio --add-metadata --xattrs --embed-thumbnail --audio-quality 0 --audio-format mp3'
alias ytv='youtube-dl --merge-output-format mp4 -f "bestvideo+bestaudio[ext=m4a]/best" --embed-thumbnail --add-metadata'

export FZF_DEFAULT_OPTS='
  --color fg:#646a76
  --color bg+:#7797b7,fg+:#2c2f30,hl:#D8DEE9,hl+:#26292a,gutter:#3a404c
  --color pointer:#373d49,info:#606672
  --border
  --color border:#646a76'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion