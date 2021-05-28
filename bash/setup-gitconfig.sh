#!/bin/bash

echo Starting to setup gitconfig
# Ask the user for their username
# Check user.name and user.global exist then ask if going to overwrite
read -p 'Git name: ' gitname
read -p 'Git email: ' gitemail

echo -e '\nGit info set:'
git config --global user.name "$gitname"
echo Your git name set: $gitname
git config --global user.email $gitemail
echo Your git email set: $gitemail
