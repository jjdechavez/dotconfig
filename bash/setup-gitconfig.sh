#!/bin/bash

getGitUser() {
  if [[ -z $(git config --global user.name) ]]; then
    askGitUserName
  else
    overwriteGitUserName
  fi
  # gitEmail=$(git config --global user.email)
}

askGitUserName() {
  read -p 'Git name: ' gitName

  while [[ -z $gitName ]]; do
    echo 'Please enter your git name!'
    read -p 'Git name: ' gitName
  done
}

overwriteGitUserName() {
  read -p 'Overwrite your git name? [Y/n]' overwrite

  if [[ $overwrite == "Y" || $overwrite == "yes" || $overwrite == "y" ]]; then
    askGitUserName
  else 
    gitName=$(git config --global user.name)
  fi
}

askForGitUser() {
  read -p 'Git name: ' gitName
  read -p 'Git email: ' gitEmail
}

isGitConfigFileExist() {
  echo "Is gitconfig exist?"
  if [[ -f $HOME/.gitconfig ]]; then
    echo "Gitconfig existed"
    getGitUser
  else
    echo "Gitconfig does not exist."
    askForGitUser
  fi
}

setUserGitConfig() {
  echo -e '\nGit info set:'

  git config --global user.name "$gitName"
  echo Your git name set: $gitName

  git config --global user.email $gitEmail
  echo Your git email set: $gitEmail
}

setupGitConfig() {
  echo Starting to setup gitconfig
  isGitConfigFileExist

  setUserGitConfig
}

setupGitConfig
