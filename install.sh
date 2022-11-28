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
sudo apt install -y code clangd fish fonts-jetbrains-mono
chsh -s /usr/bin/fish
git config --global user.name 'Alistair Keiller'
git config --global user.email 'alistair@keiller.net'

# set keyboard shortcuts
# set vscode to super+e
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>e'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'code'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch vscode'
gsettings set org.gnome.settings-daemon.plugins.media-keys email '@as []'
# set discord to super+d
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>d'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'flatpak run com.discordapp.Discord'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Launch discord'
gsettings set org.gnome.shell.keybindings toggle-overview '@as []'

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/PopLaunch1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# configure sound

# configure displays

# add flatpak run com.discordapp.Discord --start-minimized on startup