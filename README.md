dotfiles-test
===============

Include zsh tmux neovim dotfiles.
Can be used quickly and easily.
Let's try dotfiles!

## HOWTO ##

1. Setting up Arch Linux environment using Docker

   ```sh
   docker pull archlinux
   docker run -it -d --name archlinux archlinux:latest
   docker exec -it archlinux bash
   ```

2. Setting up terminal environment using dotfiles (Answer 'Y' to all prompts during the installation process.)

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/sanod4c/dotfiles-test/main/install.sh)" 
   ```

## Features ##

- zsh
- oh-my-zsh 
- powerlevel10k
- neovim
- vim-plug
- tmux
- fzf

## Recommended OS ##

- Arch Linux 

## RELEASE NOTE ##

2023/04/23 first release

