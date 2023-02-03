#!/usr/bin/env bash

# Core applications
pacman -Sy --noconfirm base-devel git openssh curl cmake make gcc nodejs python-pip zsh neovim tmux fzf stow

# Install YAY
sourcedir=~/sources
(cd $sourcedir; git clone https://aur.archlinux.org/yay.git ;cd yay ;makepkg -si)
