# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# My additions
set -o vi
export EDITOR='vim'
export VISUAL='vim'
export TERM='alacritty'
PATH=$PATH:'~/Documents/.scripts/ConfigFiles/'
group='--group-directories-first'
color='--color=auto'
alias ls='ls -Alhog $color $group'
alias ll='ls -lhog $color $group'
alias diff='diff $color'
alias projb='cd ~/Documents/.scripts/bash-fooling-around'
alias projc='cd ~/Documents/.scripts/C'
alias configs='cd ~/Documents/.scripts/ConfigFiles'
alias projpy='cd ~/Documents/.scripts/python-fooling-around'
alias dock='swaymsg output eDP-1 disable'
alias udock='swaymsg output eDP-1 enable' 
