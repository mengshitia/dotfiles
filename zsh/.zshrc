# .zshrc

# history
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
_zdir=${ZDOTDIR:-$HOME}
HISTFILE=$_zdir/.histfile
HISTSIZE=1000
SAVEHIST=1000

# completion
zstyle :compinstall filename "$_zdir/.zshrc"
autoload -Uz compinit
compinit

# prompt
setopt correct
_prompt='%F{red}[%f%F{blue}%B%D{%Y/%m/%d %T %Z}%b%F{red}]%f%F{red}[%f%F{green}%l%f%F{red}]%f
%F{red}<%f%F{magenta}%B%n%F{white}%b@%F{cyan}%B⮝%b %F{white}:%F{yellow}%b%~%F{red}>%f
%fzsh%(2L./%L.) %F{white}%h %B%(!.%F{red}#.%F{green}>) %b%f%k'
_prompt_right='%F{red}%B%(?..E:(%?%))%b%F{yellow}%B%(1j. bg:%j.)'
_prompt_2='%F{cyan}%_%f> %b%f%k'
export PS1=$_prompt
export RPS1=$_prompt_right
export PS2=$_prompt_2

# optimize
setopt no_beep
setopt auto_cd

# alias
alias grep="grep --color=auto"
alias ls="ls --color=auto"

# variable
export EDITOR=vim

# edit mode
bindkey -e

# use $EDITOR to edit command
autoload -Uz edit-command-line
zle -N edit-command-line
# Esc + ^E
bindkey '\e^E' edit-command-line

# bind the Delete key
# here is "^[[3~"
bindkey "^[[3~" delete-char

# use Shift + Tab to reverse menu complete
# here the code is "^[[Z"
bindkey "^[[Z" reverse-menu-complete

