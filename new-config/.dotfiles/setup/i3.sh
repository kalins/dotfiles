#!/usr/bin/env bash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install i3
pacman -S --noconfirm i3-wm i3lock rofi scrot dex picom

# install utils
pacman -S --noconfirm networkmanager-openvpn network-manager-applet

# Install YAY
sourcedir=~/Sources
(cd $sourcedir; git clone https://aur.archlinux.org/yay.git ;cd yay ;makepkg -si)
 
# Instrall AUR packages
yay -S polybar
