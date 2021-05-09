#!/bin/bash

# Create a new directory and enter it
mk() {
  mkdir -p "$@" && cd "$@"
}

# Fuzzy find file/dir
ff() { find . -type f -iname "*$1*";}
fd() { find . -type d -iname "*$1*";}

# Show disk usage of current folder, or list with depth
duf() {
  du --max-depth=${1:-0} -c | sort -r -n | awk '{split("K M G",v); s=1; while($1>1024){$1/=1024; s++} print int($1)v[s]"\t"$2}'
}
# Tree

t() {
  tree -AdL ${1:-1}
}


function safedelete {
    if command -v gio > /dev/null; then
        for f in "$@"
        do
            gio trash -f "$f"
        done

    elif command -v gvfs-trash > /dev/null; then
        for f in "$@"
        do
            gvfs-trash "$f"
        done

    elif [ -d "$HOME/.local/share/Trash/files" ]; then
        for f in "$@"
        do
            mv "$f" "$HOME/.local/share/Trash/files"
        done

    else
        for f in "$@"
        do
            # shellcheck disable=SC1012
            \rm "$f"
        done
    fi
}