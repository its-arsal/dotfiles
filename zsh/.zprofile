#!/usr/bin/zsh
#
## $ZDOTDIR/.zprofile Used for executing user's commands at start, will be read when starting as a login shell.
## Typically used to autostart graphical sessions and to set session-wide environment variables.

## $path configs
typeset -U path
path=($HOME/.local/bin $path)

## Exporting Default config-directory path
export DOTDIR="$HOME/.dotfiles"
export ZDOTDIR="$DOTDIR/zsh"

## Exporting common variables
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

export EDITOR="/usr/bin/nvim"
export TERMINAL="kitty"
export FILE="thunar"
export BROWSER="firefox"
export BROWSER_PRIVATE="firefox --private-window"

## Stop ranger from autoloading global rc file
export RANGER_LOAD_DEFAULT_RC=FALSE

# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
#export FZF_CTRL_T_OPTS+="--select-1 --exit-0"
#export FZF_CTRL_R_OPTS='--sort'
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

## Make less output color
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

## Startx at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
