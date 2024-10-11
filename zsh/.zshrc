# .zshrc

export EDITOR=vim

_zdir=${ZDOTDIR:-$HOME}
HISTFILE=$_zdir/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename "$zdir/.zshrc"
autoload -Uz compinit
compinit

# ignore duplicate
setopt hist_save_no_dups
setopt hist_ignore_dups

# use a built-in theme
autoload -Uz promptinit
promptinit
prompt clint

# alias
alias grep="grep --color=auto"
alias ls="ls --color=auto"

# edit mode
bindkey -e

# use $EDITOR to edit command
autoload -Uz edit-command-line
zle -N edit-command-line
# Esc + ^E
bindkey '\e^E' edit-command-line
