
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
alias c='clear'
alias vc='vscodium'
alias n='nano'
alias shutdown='sudo systemctl poweroff'

# space management
alias diskusage='ncdu'
alias space='sudo du -sh $1'


function freespace {
    if [ $EUID != 0 ]; then
      sudo "$0" "$@"
    fi

    echo "Cleaning pacman cache..."
    sudo pacman -Sc
    read $p

    echo "Cleaning unused packages..."
	sudo pacman -Rns $(pacman -Qtdq)

	echo "Cleaning cache..."
	sudo du -sh ~/.cache/
	rm -rf ~/.cache/*

	echo "Cleaning journal files..."
	sudo journalctl --vacuum-size=50M

}