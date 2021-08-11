#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"
ROOT_DIR="$(cd "$(dirname ${SCRIPTS_DIR})" &> /dev/null && pwd)"
SYSTEM_DIR="$(cd "${ROOT_DIR}/system" &> /dev/null && pwd)"
DOTFILES_DIR="${HOME}/.dotfiles"

# echo "SCRIPTS_DIR=$SCRIPTS_DIR"
# echo "ROOTDIR=$ROOT_DIR"
# echo "SYSTEM_DIR=$SYSTEM_DIR"
# echo "DOTFILES_DIR=$DOTFILES_DIR"

# set -x
set -v

mkdir -p $DOTFILES_DIR
cp $SYSTEM_DIR/[a-z]*.sh $DOTFILES_DIR/ &> /dev/null
cp $ROOT_DIR/.bash_profile ~/.bash_profile

