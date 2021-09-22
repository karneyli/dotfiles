#!/bin/sh
DOTFILES_DIR="$HOME/.dotfiles"
for DOTFILE in "$DOTFILES_DIR"/{function,function_,path,env,alias,grep,prompt,nvm,jenv,rbenv,pyenv}*.sh;
do
  source $DOTFILE
done

source $HOME/.bashrc
