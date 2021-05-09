#!/bin/bash

# Tell grep to highlight matches
GREP_OPTIONS+=" --color=auto"

alias grep="grep $GREP_OPTIONS"
export GREP_COLOR='1;32'
