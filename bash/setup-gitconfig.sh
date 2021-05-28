#!/bin/bash

getGitUser() {
  gitName=$(git config --global user.name)
  gitEmail=$(git config --global user.email)
}

askForGitUser() {
  read -p 'Git name: ' gitName
  read -p 'Git email: ' gitEmail
}

isGitConfigFileExist() {
  echo "Is gitconfig exist?"
  if [[ -f $HOME/.sample ]]; then
    echo "Gitconfig existed"
    getGitUser
  else
    echo "Gitconfig does not exist."
    askForGitUser
  fi
}

setUserGitConfig() {
  echo -e '\nGit info set:'

  # git config --global user.name "$gitName"
  echo Your git name set: $gitName

  # git config --global user.email $gitEmail
  echo Your git email set: $gitEmail
}

echo Starting to setup gitconfig
isGitConfigFileExist

setUserGitConfig
