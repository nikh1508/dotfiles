#!/bin/bash

# Script to copy all config files at one place.

export HOME=/home/nikh1508

echo Updating all config files.
echo Updated-\>

# Compton
cp -r ~/.config/compton .
echo compton

sudo cp -r 
# GTK 2.0
cp -r ~/.config/gtk-2.0 .
echo GTK 2.0

# GTK 3.0
cp -r ~/.config/gtk-3.0 .
echo GTK 3.0

# i3
cp -r ~/.config/i3 .
echo i3

# libinput-gestures
mkdir -p libinput-gestures
sudo cp /etc/libinput-gestures.conf libinput-gestures/
echo libinput-gestures

# Polybar
cp -r ~/.config/polybar .
echo polubar

# Rofi
cp -r ~/.config/rofi .
echo rofi

# Terminator
cp -r ~/.config/terminator .
echo terminator

# zsh
mkdir -p zsh
sudo cp $HOME/.zshrc zsh/
echo zsh

# dunst
cp -r ~/.config/dunst .
echo dunst
