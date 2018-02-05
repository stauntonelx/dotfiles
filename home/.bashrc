#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## set terminal emulator
export TERM='xterm-256color'

# set yaourt to use vim
export EDITOR="vim"
export VISUAL=$EDITOR

# colors
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'

# use less for manpages and colors
man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
	LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	LESS_TERMCAP_me=$'\E[0m' \
	LESS_TERMCAP_se=$'\E[0m' \
	LESS_TERMCAP_so=$'\E[38;5;246m' \
	LESS_TERMCAP_ue=$'\E[0m' \
	LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man "$@"
	}

# color prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"

# alias pacman
alias pacrm='sudo pacman -Rs'
alias pacupg='sudo pacman -Syu'
alias pacupd='sudo pacman -Syy'
alias pac='sudo pacman -S'


