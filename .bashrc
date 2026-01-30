#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompting
reset="\e[0m"; dull="\e[2m"; italic="\e[3m"
PS1="${dull}\u@\h${reset} ${italic}\w${reset}\n \$ "

# Shell options
shopt -s globstar

# Aliases
alias dotfiles="git --work-tree=$HOME --git-dir=$HOME/dotfiles"
lsbase='ls --color=auto -h --group-directories-first'
alias ls=$lsbase
alias ll="$lsbase -l"
alias grep='grep --color=auto'
alias less='less -R'

# Environment
add_paths() {
  for d in "$@"; do
    [[ -d "$d" && ! "$PATH" =~ (^|:)$d(:|$) ]] && PATH="$PATH:$d"
  done
}
add_paths ~/.cargo/bin

EDITOR='nvim'
MANPAGER='nvim +Man!'
export EDITOR MANPAGER

# Welcome message
avail=$(df -h --output=avail / | awk 'NR == 2' | tr -d ' ')
echo "$avail available on /"
