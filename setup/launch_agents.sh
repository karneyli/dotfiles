#!/bin/sh

mkdir -p ~/Library/LaunchAgents

# this should technically already be done by homebrew...
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist &> /dev/null

