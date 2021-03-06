#!/bin/bash

# Add to path
prepend-path() {
  [ -d $1 ] && PATH="$1:$PATH"
}

# Show 256 TERM colors
colors() {
  local X=$(tput op)
  local Y=$(printf %$((COLUMNS-6))s)
  for i in {0..256}; do
  o=00$i;
  echo -e ${o:${#o}-3:3} $(tput setaf $i;tput setab $i)${Y// /=}$X;
  done
}

# Calculator
calc() {
  echo "$*" | bc -l;
}

# Markdown
md() {
  pandoc $1 | lynx -stdin -dump
}
