#!/bin/zsh

# LOAD PLUGINS 
. ~/.zsh_load_plugins

# HISTORY
setopt sharehistory
HISTFILE=~/.zsh_history
SAVEHIST=1000000
HISTSIZE=1000000

# COMPLETION
setopt menucomplete
zstyle ':completion:*' menu select
autoload -U compinit
compinit

# ALIASES
alias ls='ls -a --color=yes'
alias e='${EDITOR}'
alias glurp='grim -g "$(slurp)"'
alias csview='column -s, -t'o
alias glog='git log --oneline --graph --all'
alias elinks='elinks -config-dir ~/.config/elinks'

# BINDINGS
bindkey '^ ' autosuggest-accept
bindkey -r "^g"
lswidget () { echo; ls; zle redisplay }
zle -N lswidget
bindkey '^g' lswidget
clearwidget () { echo; clear; zle redisplay }
zle -N clearwidget
makewidget () { echo; make; zle redisplay }
zle -N makewidget
bindkey '^h' clearwidget
bindkey '^b' makewidget
bindkey '^?' backward-delete-char

# PS1
#       prompt='%F{#FF1493}%m%f %1~ %F{#5CACEE}>%f '
prompt='%F{#FF1493}%m%f %1~ %F{#5CACEE}>%f '
