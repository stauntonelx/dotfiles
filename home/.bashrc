#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## set terminal emulator
export TERM='xterm-256color'

# set yaourt to use vim
export EDITOR="nano"
export VISUAL=$EDITOR

# colors
alias ls='ls --color=never --group-directories-first'
alias ll='ls -lAh --color=never --group-directories-first'
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
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
PROMPT_COMMAND='echo -en "\033]0; $("pwd") \a"'

# alias pacman
alias pacrm='sudo pacman -Rs'
alias pacupg='sudo pacman -Syu'
alias pacupd='sudo pacman -Syy'
alias pac='sudo pacman -S'
alias pacs='pacman -Ss'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias music='ncmpcpp'
