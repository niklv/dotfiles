#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/.dotfiles                  # dotfiles directory

# Mapping: "source:target" (source relative to $dir, target absolute)
files=(
    ".gitconfig:$HOME/.gitconfig"
    ".vimrc:$HOME/.vimrc"
    ".zshrc:$HOME/.zshrc"
    ".hushlogin:$HOME/.hushlogin"
    "config.ghostty:$HOME/.config/ghostty/config.ghostty"
    "starship.toml:$HOME/.config/starship.toml"
)

##########

# create symlinks
for entry in "${files[@]}"; do
    src="${entry%%:*}"
    target="${entry#*:}"
    echo "Linking $src -> $target"
    mkdir -p "$(dirname "$target")"
    ln -s "$dir/$src" "$target"
done

# Create vim dirs
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo
