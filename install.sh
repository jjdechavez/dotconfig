#!/bin/bash

# Installing Nerd Font
installnerdfont() {
  echo "Work: Installing nerd fonts"
  echo "Creating folder for fonts at ~/.local/share/fonts"
  mkdir -p ~/.local/share/fonts
  echo "Created folder for fonts at ~/.local/share/fonts"

  echo "Fetching Fira Code Nerd Font"
  cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
  echo "Finished downloading Fira Code Nerd Font"
  echo "Done: Installing nerd fonts!"
}

# Installing FZF
installfzf() {
  echo "Work: Installing FZF"
  # [  ] - meaning test the command inside of the brackets
  [ -n "$(cat /etc/os-release | grep Ubuntu)" ] && installfzfonubuntu
  [ -f "/etc/arch-release" ] && installfzfonarch
  echo "Done: Installing FZF"
}

installfzfonarch() {
  echo "Installing fzf on arch"
  sudo pacman -S fzf

  sudo pacman -S ripgrep

  # yay -S universal-ctags-git

  sudo pacman -S the_silver_searcher

  pacman -S fd
}

installfzfonubuntu() {
  echo "Installing fzf on ubuntu"
  sudo apt install fzf

  sudo apt install ripgrep

  sudo apt install universal-ctags

  sudo apt install silversearcher-ag

  sudo apt install fd-find
}

# Installing tmux
installtmux() {
  echo "Work: Installing tmux"
  [ -n "$(cat /etc/os-release | grep Ubuntu)" ] && installtmuxonubuntu
  [ -f "/etc/arch-release" ] && installtmuxonarch

  echo "Work: Copy .tmux.conf"
  cp ./tmux/.tmux.conf $HOME/.tmux.conf
  echo "Done: Installing tmux"
}

installtmuxonubuntu() {
  echo "Installing tmux on ubuntu"
  sudo apt-get install tmux
  sudo apt-get install -y xclip
}

installtmuxonarch() {
  echo "Installing tmux on arch"
  sudo pacman -S tmux
  sudo pacman -S xclip
}

setup() {
  echo "Starting to setup.."
  installnerdfont
  installfzf
  installtmux
  echo "Done"
}

# Execute setup
setup
