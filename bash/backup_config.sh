#!/bin/bash

############################################################
# Help                                                     #
############################################################
help() {
   # Display Help
   echo "Backup configurations"
   echo
   echo "Currently supported .bashrc"
   echo
   echo "Syntax: backup_config.sh [-c|h|v]"
   echo "options:"
   echo "-c    Config that going to backup."
   echo "-h    Print help."
   echo "-v    Print version."
   echo
}

############################################################
# Version                                                  #
############################################################
version() {
   # Display version
   echo "backup_config.sh 1.0.0"
}


############################################################
############################################################
# Main program                                             #
############################################################
############################################################

push_bashrc_to_github() {
  echo "Preparing to push bashrc on github."
  cd /mnt/ExternalHDD/my/dotconfig/

  git add bash/.manjaro-bashrc
  read -p 'Commit message: ' message
  git commit -m "$message"
  git status

  echo "Starting to push on github."
  git push
  echo "Succesfully pushed on github."
  cd $CURRENT_DIR
}

update_bashrc() {
  echo "Starting to update .manjaro-bashrc"
  cp $HOME/.bashrc /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc
  echo "Updated succesfully .manjaro-bashrc"

  push_bashrc_to_github
}

# Function that copy my current bashrc into my ExternalDrive. (/mnt/ExternalHDD/my/dotconfig/bash/here)
backup_bashrc() {
  #  Checkif manjaro-bashrc is exist on dotconfig
  #   - If exist, remove the old one
  #     > cp new bashrc from $HOME directory to dotconfig
  #   - else, cp new bashrc from $HOME directory to dotconfig
  echo "Running backup_bashrc"

  if [[ -f /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc ]]; then
    echo "Exist, starting to remove old .manjaro-bashrc"
    rm /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc
    echo "Removed succesfully .manjaro-bashrc"

    update_bashrc
  else
    echo ".manjaro-bashrc does not exist."
    update_bashrc
  fi
}

push_nvim_to_github() {
  echo "Preparing to push nvim on github."
  cd /mnt/ExternalHDD/my/dotconfig/

  git add nvim/lua-scratch
  read -p 'Commit message: ' message
  git commit -m "$message"
  git status

  echo "Starting to push on github."
  git push
  echo "Succesfully pushed on github."
  cd $CURRENT_DIR
}

update_nvim() {
  echo "Starting to update nvim"
  cp -r $HOME/.config/nvim /mnt/ExternalHDD/my/dotconfig/nvim/lua-scratch
  echo "Updated succesfully nvim"

  push_nvim_to_github
}

backup_nvim() {
  #  Checkif lua-scratch is exist on dotconfig
  #   - If exist, remove the old one
  #     > cp new bashrc from $HOME directory to dotconfig
  #   - else, cp new bashrc from $HOME directory to dotconfig
  echo "Running backup_nvim"

  if [[ -d /mnt/ExternalHDD/my/dotconfig/nvim/lua-scratch ]]; then
    echo "Exist, starting to remove old nvim"
    rm -rf /mnt/ExternalHDD/my/dotconfig/nvim/lua-scratch
    echo "Removed succesfully nvim"

    update_nvim
  else
    echo "nvim does not exist."
    update_nvim
  fi
}

main () {
  if [[ "$CONFIG" == "bashrc" ]]; then
    backup_bashrc
  elif [[ "$CONFIG" == "nvim" ]]; then
    backup_nvim
  else 
    echo "Error: Invalid argument"
  fi
}

############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":h:vc:" option; do
   case $option in
      h) # display Help
         help
         exit;;
      v) # display Version
         version
         exit;;
      c) # Enter config
         CONFIG=$OPTARG
         CURRENT_DIR=$(pwd)
         main;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done
