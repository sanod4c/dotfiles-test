#!/bin/bash

set -e

# Update the package manager
pacman -Sy

# Install 
pacman -S git sudo
pacman -S zsh tmux vim neovim fzf bat

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
KEEP_ZSHRC=yes RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k 

# Install zsh-autocomplete
git clone https://github.com/marlonrichert/zsh-autocomplete.git ~/.oh-my-zsh/plugins/zsh-autocomplete

# Install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# clone dotfiles 
git clone https://github.com/sanod4c/dotfiles-test.git ~/dotfiles-test

# Create symlinks for zsh, tmux, and neovim configuration files
ln -sf ~/dotfiles-test/.zshrc ~/.zshrc
ln -sf ~/dotfiles-test/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles-test/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config
ln -sf ~/dotfiles-test/.config/nvim ~/.config/

# Install vim plugin
nvim +PlugInstall +qall

# Restart zsh
exec zsh

