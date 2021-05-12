#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

$DIR/setup/cleanup.sh
$DIR/setup/homebrew.sh
$DIR/setup/dotfiles.sh
$DIR/setup/launch_agents.sh
$DIR/setup/postgres.sh

source $HOME/.bash_profile
