#!/bin/bash

pacman -Sy --noconfirm zsh neovim the_silver_searcher

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
