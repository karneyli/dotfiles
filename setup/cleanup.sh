#!/bin/bash

DOTFILES_DIR="${HOME}/.dotfiles"

set -x
rm -rf $DOTFILES_DIR

mkdir -p $HOME/bin
mkdir -p $HOME/.dotfiles

