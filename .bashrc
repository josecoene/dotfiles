#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[1;97m\]> \W $ \[\e[0m\]'
alias vim='nvim'
export EDITOR=nvim
