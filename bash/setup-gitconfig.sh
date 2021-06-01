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
  git config --global user.name "$gitName"
  git config --global user.email $gitEmail
}

displayGitConfig() {
  echo -e '\nGit user:'
  echo "git name: $gitName"
  echo "git email: $gitEmail"

  echo -e '\nGit alias:'
  echo "git personal email: $gitPersonalEmail"
  echo "git work email: $gitWorkEmail"
}

setGitConfigAliasPersonal() {
  read -p "Git personal user email: " gitPersonalEmail
  git config --global alias.personal "config --global user.email $gitPersonalEmail"
}

setGitConfigAliasWork() {
  read -p "Git work user email: " gitWorkEmail
  git config --global alias.work "config --global user.email $gitWorkEmail"
}

setGitConfigAliasEmail() {
  echo "Added git alias email"
  git config --global alias.email "config --global user.email"
}

setGitConfigAlias() {
  echo "Setup git config alias for personal and work."
  setGitConfigAliasEmail
  setGitConfigAliasPersonal
  setGitConfigAliasWork
}

setupGitConfig() {
  echo Starting to setup gitconfig
  isGitConfigFileExist
  setGitConfigAlias
  setUserGitConfig
  displayGitConfig
}

setupGitConfig
