#!/bin/sh

# DEFAULT TOOLS
export EDITOR=vim
export PAGER=less

# PATH ADDITIONS
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"

# SETUP XDG RUNTIME
export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
mkdir -p $XDG_RUNTIME_DIR
chmod 0700 $XDG_RUNTIME_DIR

#export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

# PROGRAM SETTINGS
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
export GCC_COLORS='error=01;31:warning=01;33:note=01;36:caret=01;32:locus=01:quote=01'

export BEMENU_OPTS='--fn terminus -c -W 0.5 -l 10 --tb #5bcefa --tf #000000 --fb #000000 --ff #ffffff --hf #f58998'
