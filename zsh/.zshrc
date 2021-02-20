## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.dotfiles/zsh/.zshrc.
## Initialization code that may require console input (password prompts, [y/n]
## confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## $ZDOTDIR/.zshrc Used for setting user's interactive shell configuration and executing commands, 
## will be read when starting as an interactive shell.

## Set vim keybindings
bindkey -v

## ZSH THEME
ZSH_THEME="powerlevel10k"

## Load Base config script
source $ZDOTDIR/base-config.sh

## Use autocompletions
autoload -Uz compinit
compinit

## Use prompt theme system
autoload -Uz promptinit
promptinit

## Loading zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

## Import custom aliasrc from $DOTDIR
source $ZDOTDIR/aliasrc

## Completion for kitty
kitty + complete setup zsh | source /dev/stdin

## To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/.dotfiles/zsh/.p10k.zsh ]] || source ~/.dotfiles/zsh/.p10k.zsh

## Source scripts from $ZDOTDIR/scripts
source $ZDOTDIR/scripts/*.sh

