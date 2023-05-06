#!/bin/zsh

# LOAD PLUGINS 
~/.zsh_load_plugins

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

# BINDINGS
bindkey '^ ' autosuggestion-accept

# ALIASES
alias ls='ls -a --color=yes'

# PS1
prompt='%F{#FF1493}%m%f %1~ %F{#5CACEE}>%f '
