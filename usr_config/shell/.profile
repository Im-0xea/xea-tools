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
export BEMENU_OPTS='--fn terminus --tb #5bcefa --tf #000000 --fb #000000 --ff #ffffff --hf #f58998'
