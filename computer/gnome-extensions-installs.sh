#!/bin/bash

echo "Installing Gnome Extensions" | lolcat

yay -S --needed --noconfirm \
	gnome-shell-extension-forge gnome-shell-extension-dash-to-dock gnome-shell-extension-just-perfection-desktop

echo "Installing GTK Themes" | lolcat

yay -S catppuccin-gtk-theme-mocha
