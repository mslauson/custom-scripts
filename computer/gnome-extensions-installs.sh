#!/bin/bash

echo "Installing Gnome Extensions" | lolcat

yay -S --needed --noconfirm \
	gnome-shell-extension-forge gnome-shell-extension-dash-to-dock \
	gnome-shell-extension-just-perfection-desktop gnome-shell-extension-space-bar-git \
	gnome-shell-extension-transparent-top-bar-git

echo "Installing GTK Themes" | lolcat

yay -S --needed --noconfirm \
	catppuccin-gtk-theme-mocha
