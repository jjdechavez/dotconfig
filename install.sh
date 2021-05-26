#!/bin/bash

# Installing Nerd Font
echo "Installing nerd fonts"
echo "Creating folder for fonts at ~/.local/share/fonts"
mkdir -p ~/.local/share/fonts
echo "Created folder for fonts at ~/.local/share/fonts"

echo "Fetching Fira Code Nerd Font"
cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
echo "Finished downloading Fira Code Nerd Font"
echo "Done: installing nerd fonts!"
