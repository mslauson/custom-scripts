#!/bin/bash

mkdir ~/installs
mkdir -p ~/projects/{api,config,libs,ui}

yay -S cava autotiling lazygit insomia ttf-jetbrains-mono-nerd toilet \
  lolcat zsh kitty neovim neofetch ranger rofi wofi fortune-mod

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
