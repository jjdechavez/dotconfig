#!/bin/bash

getGitUserName() {
  if [[ -z $(git config --global user.name) ]]; then
    askGitUserName
  else
    overwriteGitUserName
  fi
}

getGitUserEmail() {
  if [[ -z $(git config --global user.email) ]]; then
    askGitUserEmail
  else
    overwriteGitUserEmail
  fi
}

askGitUserName() {
  read -p 'Git name: ' gitName

  while [[ -z $gitName ]]; do
    echo 'Please enter your git name!'
    read -p 'Git name: ' gitName
  done
}

askGitUserEmail() {
  read -p 'Git email: ' gitEmail

  while [[ -z $gitEmail ]]; do
    echo 'Please enter your git email!'
    read -p 'Git name: ' gitEmail
  done
}

overwriteGitUserName() {
  read -p 'Overwrite your git name? [Y/n] ' overwrite


  while [[ -z $overwrite ]]; do
    echo 'Please enter your answer!'
    read -p 'Overwrite your git name? [Y/n] ' overwrite
  done

  if [[ $overwrite == "Y" || $overwrite == "yes" || $overwrite == "y" ]]; then
    askGitUserName
  else 
    gitName=$(git config --global user.name)
  fi
}

overwriteGitUserEmail() {
  read -p 'Overwrite your git email? [Y/n] ' overwrite


  while [[ -z $overwrite ]]; do
    echo 'Please enter your answer!'
    read -p 'Overwrite your git email? [Y/n] ' overwrite
  done

  if [[ $overwrite == "Y" || $overwrite == "yes" || $overwrite == "y" ]]; then
    askGitUserEmail
  else 
    gitEmail=$(git config --global user.email)
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
    getGitUserName
    getGitUserEmail
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
