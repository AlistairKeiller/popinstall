#!/bin/sh
set -e

# enable tiling
gsettings set org.gnome.mutter edge-tiling false
gsettings set org.gnome.shell.extensions.pop-shell tile-by-default true

# enable night light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# use 24h time format
gsettings set org.gnome.desktop.interface clock-format 24h
gsettings set org.gtk.Settings.FileChooser clock-format 24h

# install apps
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.skype.Client
flatpak install flathub com.microsoft.Teams
flatpak install flathub us.zoom.Zoom
sudo apt install -y code fish fonts-jetbrains-mono julia rust-all gdb
chsh -s /usr/bin/fish
git config --global user.name 'Alistair Keiller'
git config --global user.email 'alistair@keiller.net'

# configure sound

# configure displays