#!/usr/bin/zsh
#
## Commands to exclude from auto-correction
#
alias cp='nocorrect cp'
alias ebuild='nocorrect ebuild'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias hpodder='nocorrect hpodder'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias sudo='nocorrect sudo'
alias yay='nocorrect yay'
alias git='nocorrect git'

## Setting auto-correction on
setopt CORRECT_ALL
