#!/bin/bash

mkdir ~/installs
mkdir -p ~/projects/{api,config,libs,ui}

sudo pacman -S i3 picom polybar kitty neovim neofetch ranger rofi fortune-mod

yay -S cava autotiling lazygit insomia ttf-jetbrains-mono-nerd toilet lolcat
