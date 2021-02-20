#!/usr/bin/zsh

## Display dots while waiting for completions
COMPLETION_WAITING_DOTS="true"
#CASE_SENSITIVE="true"
#HYPHEN_INSENSITIVE="true"

## Set ZSH_CACHE and ZSH_CACHE_DIR to store ZSH cache files
if [[ -z "$ZSH_CACHE" ]]; then
  ZSH_CACHE="$ZDOTDIR/cache"
fi

if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZDOTDIR/cache"
fi

## Save the location of the current completion dump file.
ZSH_COMPDUMP="$ZSH_CACHE/zcompdump-${HOST}-${ZSH_VERSION}"

## Load all of the config files in $ZDOTDIR/lib that end in .zsh
for config_file ($ZDOTDIR/lib/*.zsh); do
  source $config_file
done

## Load the theme
if [ ! "$ZSH_THEME" = ""  ]; then
    source "$ZDOTDIR/themes/$ZSH_THEME.zsh-theme"
else
    source "$ZDOTDIR/themes/mira2.0.zsh-theme"
fi
