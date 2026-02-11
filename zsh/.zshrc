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
# Set prompt_subst to use '${vcs_info_msg_0_}' directly in the prompt.
setopt prompt_subst

_pr_date='%F{magenta}[%F{cyan}%D{%F %T %Z}%F{magenta}]%f'
_pr_tty='%F{magenta}[%F{green}%l%F{magenta}]%f'
_pr_user='%F{green}%n%f'
_pr_host='%B%F{blue}%M%f%b'
_pr_dir='%F{yellow}%~%f'
_pr_zsh='%fzsh%(2L./%L.)'
_pr_hist='%B%h%b'
_pr_priv='%(!.%B%F{red}#%f.%B%F{green}>%f%b)'
_pr_job='%(1j. [%F{yellow}%B%j%b%f].)'

autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%:%r'
precmd () { vcs_info }

export PS1='${_pr_date}${_pr_tty}
%F{magenta}<%f${_pr_user}@${_pr_host}:${_pr_dir}%F{magenta}>%f
${_pr_zsh} ${_pr_hist}${_pr_job} %U${vcs_info_msg_0_}%u${_pr_priv} '
# Show error status on last command if an error was occurred.
export RPS1='%(?..%K{red}%B%F{white}E:(%?%)%f%b%k)'
export PS2='%F{cyan}(%_)%f> %b%f%k'

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

