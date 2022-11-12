# pm aliases
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias shutdown='sudo systemctl poweroff'
alias halt="sudo systemctl halt"
alias suspend="sudo systemctl suspend"

alias inst='sudo apt install $1'
alias uninst='sudo apt remove $1'
alias update='sudo apt update -Syu'
alias instpkg='sudo dpkg -i $1'

# lazy aliases
alias q='exit'
alias c='clear'
alias vc='vscodium'
alias n='nano'
alias myip="curl http://ipecho.net/plain; echo"

# space management
alias diskusage='ncdu'
alias space='sudo du -sh $1'
alias df="df -h"

function freespace {
    echo "Cleaning pacman cache..."
    sudo apt clean
    read $p

    echo "Cleaning cache..."
    sudo du -sh ~/.cache/
    rm -rf ~/.cache/*

    echo "Cleaning journal files..."
    sudo journalctl --vacuum-size=50M
}
