#!/bin/bash
alias wolfman="~/Projects/wolfman/bin/wolfman"

# Shortcuts

alias reload="source ~/.bash_profile"
alias _="sudo"

# Default options
alias json="json -c"

# rm to Trash
# alias rm='safedelete'

# List declared aliases, functions, paths
alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

# Directory listing/traversal

LS_COLORS="--color -G"
LS_TIMESTYLEISO="--time-style=long-iso"
LS_GROUPDIRSFIRST="--group-directories-first"

alias l="ls -lahA $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
alias ll="ls -lA $LS_COLORS"
alias lt="ls -lhAtr $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
alias ld="ls -ld $LS_COLORS */"
alias lp="stat -c '%a %n' *"

unset LS_COLORS LS_TIMESTYLEISO LS_GROUPDIRSFIRST

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"                  # Go to previous dir with -
alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
