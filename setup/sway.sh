#!/usr/bin/env bash

# Install sway

pacman -Sy --noconfirm sway swaylock swaybg alacritty \
  kickoff waybar otf-font-awesome pulseaudio pulseadio-alsa pavucontrol \
  nm-connection-editor


# Install greetd and enable it
yay -Sy greetd

systemctl enable greetd.service
systemctl start greetd.service

# Configure greetd to start sway

# Replace $SHEL with sway in the command section
# Change the user to you
