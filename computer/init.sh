#!/bin/bash

echo "installing base packages..."
mkdir ~/installs
mkdir ~/.zsh_plugins
mkdir -p ~/projects/{api,config,libs,ui}

echo "Would you like to init nfs mounts (fstab)
"
##
10.7.5.60:/mnt/general/personal/media     /mnt/media     nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0
10.7.5.60:/mnt/general/backup /mnt/backup        nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0
sudo pacman -Syyu

echo "installing yay..."
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "updating with yay..."

yay -S nerd-fonts-jetbrains-mono-160

yay -S --needed --noconfirm cava autotiling lazygit insomia ttf-jetbrains-mono-nerd toilet \
  lolcat zsh kitty neovim neofetch ranger rofi wofi fortune-mod \
  ripgrep autojump hyprland waybar-hyprland-git  \
  waybar-mpris-git python3 rustup kitty  wofi \
  xdg-desktop-portal-hyprland-git tty-clock-git swaylockd grim slurp \
  pokemon-colorscripts-git starship jq dunst wl-clipboard swaylock-effects-git \
  swww-git  golang aur-talk-git aurpublish yup aurvote-utils \
  package-query

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh_plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh_plugins/zsh-autosuggestions

git clone https://gitea.slauson.io/mslauson/wm-config.git ~/projects/config/wm-config
~/projects/config/wm-config/init.sh

git clone https://gitea.slauson.io/mslauson/term-config.git ~/projects/config/term-config
~/projects/config/term-config/init.sh

