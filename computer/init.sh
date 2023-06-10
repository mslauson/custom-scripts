#!/bin/bash
#
echo "updating with pacman..."
sudo pacman -Syyu --noconfirm

#echo "installing yay..."
#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

echo "updating with yay..."
yay -Syyu --noconfirm

rm -rf ~/installs
rm -r ~/.zsh_plugins
rm -r ~/projects

mkdir ~/installs
mkdir ~/.zsh_plugins
mkdir -p ~/projects/{api,config,libs,ui}

# Mounts

# Mounts
# read -p "Do you want to create mount points and update fstab? (yes/no) " yn
#
# case $yn in 
# 	yes ) 
# 	  echo "Creating /mnt directories";
# 	      mkdir -p /mnt/{media,backup};
# 	  echo "Updating fstab";
# 	    sudo echo "10.7.5.60:/mnt/general/personal/media     /mnt/media     nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0" >> /etc/fstab
#       sudo echo "10.7.5.60:/mnt/general/backup /mnt/backup        nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0" >> /etc/fstab
#        break;;
# 	no ) echo exiting...;
# 		break;;
# 	* ) echo invalid response;;
# esac
# done


echo "installing fonts and fun stuff"
yay -S nerd-fonts-jetbrains-mono-160 ponysay cowsay cowthink

echo "installing base packages..."
yay -S --needed --noconfirm cava autotiling lazygit insomia ttf-jetbrains-mono-nerd toilet \
  lolcat zsh kitty neovim neofetch ranger rofi wofi fortune-mod \
  ripgrep autojump hyprland waybar-hyprland-git  \
  waybar-mpris-git python3 rustup kitty  wofi \
  xdg-desktop-portal-hyprland-git tty-clock-git swaylockd grim slurp \
  pokemon-colorscripts-git starship jq dunst wl-clipboard swaylock-effects-git \
  swww-git  golang aur-talk-git aurpublish yup aurvote-utils \
  package-query util-say-git  wthrr wlogout pipewire bluez \
  wireguard-tools wifi4wofi gdm


echo "Enabling LightDM as Login Manager..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
sudo systemctl enable gdm

echo "Installing nvm..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo "Installing nvm..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
nvm install 20

echo "Installing zplug..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "Installing zsh plugins..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh_plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh_plugins/zsh-autosuggestions

echo "Ininitalizing configs..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
git clone https://gitea.slauson.io/mslauson/wm-config.git ~/projects/config/wm-config
~/projects/config/wm-config/init.sh

git clone https://gitea.slauson.io/mslauson/term-config.git ~/projects/config/term-config
~/projects/config/term-config/init.sh

git clone https://gitea.slauson.io/mslauson/astro-config.git ~/projects/config/astro-config
~/projects/config/astro-config/init.sh

echo "Initializing notes..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
git clone https://gitea.slauson.io/mslauson/notes.git ~/notes

echo "            ##
                 ####
                ######
               ########
              ##########
             ############
            ##############
           ################
          ##################
         ####################
        ######################
       #########      #########
      ##########      ##########
     ###########      ###########
    ##########          ##########
   #######                  #######
  ####                          ####
 ###                              ###
"

echo "
██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗██╗                                                                                         
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝██║                                                                                         
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  ██║                                                                                         
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  ╚═╝                                                                                         
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗██╗                                                                                         
 ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝                                                                                         
                                                                                                                                                          
███████╗███╗   ██╗     ██╗ ██████╗ ██╗   ██╗    ██╗   ██╗███████╗██╗███╗   ██╗ ██████╗      █████╗ ██████╗  ██████╗██╗  ██╗    ██████╗ ████████╗██╗    ██╗
██╔════╝████╗  ██║     ██║██╔═══██╗╚██╗ ██╔╝    ██║   ██║██╔════╝██║████╗  ██║██╔════╝     ██╔══██╗██╔══██╗██╔════╝██║  ██║    ██╔══██╗╚══██╔══╝██║    ██║
█████╗  ██╔██╗ ██║     ██║██║   ██║ ╚████╔╝     ██║   ██║███████╗██║██╔██╗ ██║██║  ███╗    ███████║██████╔╝██║     ███████║    ██████╔╝   ██║   ██║ █╗ ██║
██╔══╝  ██║╚██╗██║██   ██║██║   ██║  ╚██╔╝      ██║   ██║╚════██║██║██║╚██╗██║██║   ██║    ██╔══██║██╔══██╗██║     ██╔══██║    ██╔══██╗   ██║   ██║███╗██║
███████╗██║ ╚████║╚█████╔╝╚██████╔╝   ██║       ╚██████╔╝███████║██║██║ ╚████║╚██████╔╝    ██║  ██║██║  ██║╚██████╗██║  ██║    ██████╔╝   ██║   ╚███╔███╔╝
╚══════╝╚═╝  ╚═══╝ ╚════╝  ╚═════╝    ╚═╝        ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚═════╝    ╚═╝    ╚══╝╚══╝ 
"
exit 0;
