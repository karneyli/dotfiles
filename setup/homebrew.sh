#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
   echo "Installing Homebrew ..."
   bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
   rbenv init
else
   echo "Homebrew already installed!"
fi

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"
BREWFILE="$(dirname $SCRIPTS_DIR)/Brewfile"

set -x
brew bundle --file $BREWFILE

# $(brew --prefix)/opt/fzf/install
