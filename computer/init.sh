#!/bin/bash

mkdir ~/installs
mkdir ~/.zsh_plugins
mkdir -p ~/projects/{api,config,libs,ui}

yay -S cava autotiling lazygit insomia ttf-jetbrains-mono-nerd toilet \
  lolcat zsh kitty neovim neofetch ranger rofi wofi fortune-mod \
  ripgrep autojump hyprland waybar-hyprland cava \
  waybar-mpris-git python rustup kitty fish wofi \
  xdg-desktop-portal-hyprland-git tty-clock-git swaylockd grim slurp \
  pokemon-colorscripts-git starship jq dunst wl-clipboard swaylock-effects-git \
  swww-git nerd-fonts-git golang

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh_plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh_plugins/zsh-autosuggestions

git clone https://gitea.slauson.io/mslauson/wm-config.git ~/projects/config/wm-config
~/projects/config/wm-config/init.sh

git clone https://gitea.slauson.io/mslauson/term-config.git ~/projects/config/term-config
~/projects/config/term-config/init.sh

