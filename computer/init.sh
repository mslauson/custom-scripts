#!/bin/bash

echo "Initializing environment"

echo "updating with pacman..."
sudo pacman -Syyu --noconfirm

#echo "Installing yay..."
#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

echo "updating with yay..."
yay -Syyu --noconfirm

yay -S --needed --noconfirm cowsay cowthink ponysay toilet lolcat nerd-fonts-meta gum

#Mounts
# echo "Would you like to mount nfs shares?" | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
# select yn in "Yes" "No"; do
# case $yn in
# 	yes )
# 	  echo "Creating /mnt directories";
# 	      sudo mkdir -p /mnt/{media,backup};
# 	  echo "Updating fstab";
# 	    sudo echo "10.7.5.60:/mnt/general/personal/media     /mnt/media     nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0" >> /etc/fstab
#       sudo echo "10.7.5.60:/mnt/general/backup /mnt/backup        nfs     _netdev,noauto,x-systemd.automount,x-systemd.mount-timeout=10,timeo=14,x-systemd.idle-timeout=1min 0 0" >> /etc/fstab
#        break;;
# 	no ) echo exiting...;
# 		break;;
# 	* ) echo invalid response;;
# esac
# done

# read -p "Please enter git username: " GIT_USER
# read -p "Please enter git password: " GIT_PASS

git config --global credential.helper cache

echo "Starting SIO Arch Initialization!\rPlease wait a few moments and stay near by \rin case any prompts appear." | lolcat

echo "Initializing project directories" | lolcat
mkdir -p ~/projects/{config,api,libs,ui}
mkdir -p ~/projects/api/{budget,ndt,blog}

./yay-installs

# echo "Enabling LightDM as Login Manager..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
# sudo systemctl enable gdm

echo "Installing Node 20" | lolcat
nvm install 20

echo "Installing zplug..." | lolcat
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "Installing tmux package manager..." | lolcat
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# echo "Installing zsh plugins..." | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh_plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh_plugins/zsh-autosuggestions

echo "Ininitalizing configs..." | lolcat
# git clone https://$GIT_USER:$GIT_PASS@gitea.slauson.io/mslauson/wm-config.git ~/projects/config/wm-config
# git clone https://$GIT_USER:$GIT_PASS@gitea.slauson.io/mslauson/term-config.git ~/projects/config/term-config
# git clone https://$GIT_USER:$GIT_PASS@gitea.slauson.io/mslauson/astro-config.git ~/projects/config/astro-config

git clone https://gitea.slauson.io/mslauson/wm-config.git ~/projects/config/wm-config
git clone https://gitea.slauson.io/mslauson/term-config.git ~/projects/config/term-config
git clone https://gitea.slauson.io/mslauson/astro-config.git ~/projects/config/astro-config

echo "Changing shell to zsh..." | lolcat
chsh -s $(which zsh)

echo "Initializing notes..." | lolcat
git clone https://gitea.slauson.io/mslauson/notes.git ~/notes

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


                                  ##
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
 

 ██████╗██████╗ ███████╗ █████╗ ████████╗███████╗██████╗     ██████╗ ██╗   ██╗   
██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗    ██╔══██╗╚██╗ ██╔╝██╗
██║     ██████╔╝█████╗  ███████║   ██║   █████╗  ██║  ██║    ██████╔╝ ╚████╔╝ ╚═╝
██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██╔══╝  ██║  ██║    ██╔══██╗  ╚██╔╝  ██╗
╚██████╗██║  ██║███████╗██║  ██║   ██║   ███████╗██████╔╝    ██████╔╝   ██║   ╚═╝
 ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═════╝     ╚═════╝    ╚═╝      
                                                                                 
            ███╗   ███╗███████╗              ███████╗██╗ ██████╗                             
            ████╗ ████║██╔════╝              ██╔════╝██║██╔═══██╗                            
            ██╔████╔██║███████╗    █████╗    ███████╗██║██║   ██║                            
            ██║╚██╔╝██║╚════██║    ╚════╝    ╚════██║██║██║   ██║                            
            ██║ ╚═╝ ██║███████║              ███████║██║╚██████╔╝                            
            ╚═╝     ╚═╝╚══════╝              ╚══════╝╚═╝ ╚═════╝                             
                                                                                 

" | lolcat
exit 0
