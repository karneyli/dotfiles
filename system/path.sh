#!/bin/bash

# Start with system path
# Retrieve it from getconf, otherwise it's just current $PATH

# Prepend new items to path (if directory exists)

prepend-path /bin
prepend-path /usr/bin
prepend-path /usr/local/bin
prepend-path $HOME/bin
prepend-path /sbin
prepend-path /usr/sbin
prepend-path /usr/local/sbin
prepend-path "$HOME/bin"
prepend-path "$HOME/.rbenv/bin"
prepend-path "$HOME/.poetry/bin"

export PATH
