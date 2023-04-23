#!/bin/bash

set -e

# update dotfiles
cd ~/dotfiles-test
git pull

# Create symlinks for zsh, tmux, and neovim configuration files
ln -sf ~/dotfiles-test/.zshrc ~/.zshrc
ln -sf ~/dotfiles-test/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles-test/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles-test/.config/nvim ~/.config/

# output message
echo "dotfiles updated!"
