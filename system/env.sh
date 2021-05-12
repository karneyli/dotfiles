#!/bin/bash
export BASH_SILENCE_DEPRECATION_WARNING=1

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nano"

# History

export HISTSIZE=32768;
export HISTFILESIZE="${HISTSIZE}";
export SAVEHIST=4096
export HISTCONTROL=ignoredups:erasedups
export PGDATA=/usr/local/var/postgres

# Enable colors

export CLICOLOR=1

# Prefer US English and use UTF-8

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Highlight section titles in man pages

export LESS_TERMCAP_md="${yellow}";

# Keep showing man page after exit
export MANPAGER='less -X';

# Set vim as default text editor
export EDITOR=vim
export VISUAL=vim

# Use less command as a pager
export PAGER=less

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Do not autocomplete when accidentally pressing Tab on an empty line.
shopt -s no_empty_cmd_completion

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
