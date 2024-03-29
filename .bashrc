#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls aliases
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lal='ls -al --color=auto'

PS1='[\u@\h \W]\$ '

# Show beautiful info
neofetch

# default editor
EDITOR=/usr/bin/nano

# some other useful alias
alias whatsmyip="curl http://ipecho.net/plain; echo"
alias df="df -h"

# useful alias
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias suspend="sudo systemctl suspend"

# magic-startup-arch-sh
alias inst='sudo pacman -S $1'
alias uninst='sudo pacman -R $1'
alias update='sudo pacman -Syu'
alias instpkg='sudo pacman -U $1'

alias aurupd='yay -Syu'
alias aurinst='yay -S $1'
alias aursearch='yay -Si $1'
alias aurremove='yay -Rns $1'

# lazy aliases
alias q='exit'
alias vc='vscodium'
alias n='nano'
alias shutdown='sudo systemctl poweroff'
alias diskusage='ncdu'

# dev aliases
alias send2git='git add .; git commit -m $1; git push'
alias wp_on='cd ~/vagrant-local; vagrant up'
alias wp_off='cd ~/vagrant-local; vagrant halt'
alias venvcreate='virtualenv venv'
alias venvactivate='source venv/bin/activate'

git config --global alias.lg "log --graph --abbrev-commit \
  --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) \
  - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- \
  %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
